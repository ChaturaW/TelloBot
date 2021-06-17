import numpy as np
import cv2 as cv
import tensorflow as tf
import pygame
import time

WIDTH, HEIGHT = 1280, 720
BBOX_COLOUR = (255, 0, 0)
YRECT_COLOUR = (255, 255, 0)

def render_screen(screen):
    
    global model 
    model = tf.keras.models.load_model('./Models/Red-Sign')
    print("Loaded model - ", type(model))
    clock = pygame.time.Clock()
    run = True

    try:
        cap = cv.VideoCapture(0)
        if not cap.isOpened():
            print("Cannot open camera")
            exit()
        while run:
            for e in pygame.event.get():
                if e.type == pygame.KEYDOWN:
                    if e.key == pygame.K_SPACE:
                        print("--space key pressed")
                        run = False

            # Capture frame-by-frame
            ret, frame = cap.read()
            # if frame is read correctly ret is True
            if not ret:
                print("Can't receive frame (stream end?). Exiting ...")
                break
            frame = cv.cvtColor(frame, cv.COLOR_BGR2RGB)
            frame = np.rot90(frame)
            frame = np.flipud(frame)
            img_data = frame        

            v_width, v_height = img_data.shape[0], img_data.shape[1]
            m_width, m_height = 216, 216
            width_ratio = v_width/m_width
            height_ratio = v_height/m_height

            #img_data = cv2.resize(img_data, dsize=(m_width, m_height), interpolation=cv2.INTER_LINEAR)          

            img_data = tf.keras.preprocessing.image.smart_resize(img_data, (m_width, m_height))
        
            frame = pygame.surfarray.make_surface(img_data)
            #print(img_data.shape)
            screen.blit(frame,(0,0))
            
            img_data = tf.expand_dims(img_data, 0)
            
            predictions = model.predict(img_data)
            bbox = predictions[0]
            bbox = [bbox[0] * m_width #* width_ratio
            , bbox[1] * m_height #* height_ratio
            , bbox[2] * m_width #* width_ratio
            , bbox[3] * m_height] #* height_ratio]

            bbox = [int(bbox[0]), int(bbox[1]), int(bbox[2]), int(bbox[3])]
                    
            b_width = bbox[3] - bbox[1]
            b_height = bbox[2] - bbox[0]

            bbox_rect = pygame.Rect(bbox[1], bbox[0], b_width, b_height)
            pygame.draw.rect(screen, BBOX_COLOUR, bbox_rect, 1)

            #draw_rect = pygame.Rect(bbox[1] * width_ratio, bbox[0] * height_ratio, 20, 20)
            #pygame.draw.rect(screen, YRECT_COLOUR, draw_rect)

            pygame.display.update()
            if cv.waitKey(1) == ord('q'):
                break
            clock.tick(50)
    except Exception as e:
        print("Error -", e)
        
    # When everything done, release the capture
    finally:
        cap.release()
        cv.destroyAllWindows()
        pygame.quit()
        cv.destroyAllWindows()
        time.sleep(3)
        print("END")
        cap.release()
        
def main():
    print('main function')
    pygame.init()
    pygame.display.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("TelloBot - Model Test")
    pygame.font.init()

    render_screen(screen)

if __name__ == "__main__":
    main()

