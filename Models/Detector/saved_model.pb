Ë
Ø¼
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02unknown8ùå

z
bl_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebl_2/kernel
s
bl_2/kernel/Read/ReadVariableOpReadVariableOpbl_2/kernel*&
_output_shapes
:*
dtype0
j
	bl_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bl_2/bias
c
bl_2/bias/Read/ReadVariableOpReadVariableOp	bl_2/bias*
_output_shapes
:*
dtype0
z
bl_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebl_4/kernel
s
bl_4/kernel/Read/ReadVariableOpReadVariableOpbl_4/kernel*&
_output_shapes
: *
dtype0
j
	bl_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bl_4/bias
c
bl_4/bias/Read/ReadVariableOpReadVariableOp	bl_4/bias*
_output_shapes
: *
dtype0
z
bl_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_namebl_6/kernel
s
bl_6/kernel/Read/ReadVariableOpReadVariableOpbl_6/kernel*&
_output_shapes
: @*
dtype0
j
	bl_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bl_6/bias
c
bl_6/bias/Read/ReadVariableOpReadVariableOp	bl_6/bias*
_output_shapes
:@*
dtype0
u
bb_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Àì*
shared_namebb_1/kernel
n
bb_1/kernel/Read/ReadVariableOpReadVariableOpbb_1/kernel*!
_output_shapes
:Àì*
dtype0
k
	bb_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bb_1/bias
d
bb_1/bias/Read/ReadVariableOpReadVariableOp	bb_1/bias*
_output_shapes	
:*
dtype0
s
bb_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namebb_2/kernel
l
bb_2/kernel/Read/ReadVariableOpReadVariableOpbb_2/kernel*
_output_shapes
:	@*
dtype0
j
	bb_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bb_2/bias
c
bb_2/bias/Read/ReadVariableOpReadVariableOp	bb_2/bias*
_output_shapes
:@*
dtype0
u
cl_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Àì*
shared_namecl_1/kernel
n
cl_1/kernel/Read/ReadVariableOpReadVariableOpcl_1/kernel*!
_output_shapes
:Àì*
dtype0
k
	cl_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	cl_1/bias
d
cl_1/bias/Read/ReadVariableOpReadVariableOp	cl_1/bias*
_output_shapes	
:*
dtype0
r
bb_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namebb_3/kernel
k
bb_3/kernel/Read/ReadVariableOpReadVariableOpbb_3/kernel*
_output_shapes

:@ *
dtype0
j
	bb_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bb_3/bias
c
bb_3/bias/Read/ReadVariableOpReadVariableOp	bb_3/bias*
_output_shapes
: *
dtype0

classifier_head/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameclassifier_head/kernel

*classifier_head/kernel/Read/ReadVariableOpReadVariableOpclassifier_head/kernel*
_output_shapes
:	*
dtype0

classifier_head/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameclassifier_head/bias
y
(classifier_head/bias/Read/ReadVariableOpReadVariableOpclassifier_head/bias*
_output_shapes
:*
dtype0
|
bbox_head/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namebbox_head/kernel
u
$bbox_head/kernel/Read/ReadVariableOpReadVariableOpbbox_head/kernel*
_output_shapes

: *
dtype0
t
bbox_head/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebbox_head/bias
m
"bbox_head/bias/Read/ReadVariableOpReadVariableOpbbox_head/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0

Adam/cl_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Àì*#
shared_nameAdam/cl_1/kernel/m
|
&Adam/cl_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/m*!
_output_shapes
:Àì*
dtype0
y
Adam/cl_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/cl_1/bias/m
r
$Adam/cl_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/m*
_output_shapes	
:*
dtype0

Adam/classifier_head/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_nameAdam/classifier_head/kernel/m

1Adam/classifier_head/kernel/m/Read/ReadVariableOpReadVariableOpAdam/classifier_head/kernel/m*
_output_shapes
:	*
dtype0

Adam/classifier_head/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/classifier_head/bias/m

/Adam/classifier_head/bias/m/Read/ReadVariableOpReadVariableOpAdam/classifier_head/bias/m*
_output_shapes
:*
dtype0

Adam/cl_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Àì*#
shared_nameAdam/cl_1/kernel/v
|
&Adam/cl_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/v*!
_output_shapes
:Àì*
dtype0
y
Adam/cl_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/cl_1/bias/v
r
$Adam/cl_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/v*
_output_shapes	
:*
dtype0

Adam/classifier_head/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_nameAdam/classifier_head/kernel/v

1Adam/classifier_head/kernel/v/Read/ReadVariableOpReadVariableOpAdam/classifier_head/kernel/v*
_output_shapes
:	*
dtype0

Adam/classifier_head/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/classifier_head/bias/v

/Adam/classifier_head/bias/v/Read/ReadVariableOpReadVariableOpAdam/classifier_head/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
R
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ËQ
valueÁQB¾Q B·Q
Ò
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
%
#_self_saveable_object_factories
4
#_self_saveable_object_factories
	keras_api


kernel
bias
#_self_saveable_object_factories
	variables
regularization_losses
 trainable_variables
!	keras_api
w
#"_self_saveable_object_factories
#	variables
$regularization_losses
%trainable_variables
&	keras_api


'kernel
(bias
#)_self_saveable_object_factories
*	variables
+regularization_losses
,trainable_variables
-	keras_api
w
#._self_saveable_object_factories
/	variables
0regularization_losses
1trainable_variables
2	keras_api


3kernel
4bias
#5_self_saveable_object_factories
6	variables
7regularization_losses
8trainable_variables
9	keras_api
w
#:_self_saveable_object_factories
;	variables
<regularization_losses
=trainable_variables
>	keras_api
w
#?_self_saveable_object_factories
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api


Dkernel
Ebias
#F_self_saveable_object_factories
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api


Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api


Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api


Ykernel
Zbias
#[_self_saveable_object_factories
\	variables
]regularization_losses
^trainable_variables
_	keras_api


`kernel
abias
#b_self_saveable_object_factories
c	variables
dregularization_losses
etrainable_variables
f	keras_api


gkernel
hbias
#i_self_saveable_object_factories
j	variables
kregularization_losses
ltrainable_variables
m	keras_api

niter

obeta_1

pbeta_2
	qdecay
rlearning_rateRmÔSmÕ`mÖam×RvØSvÙ`vÚavÛ
 
 
 

0
1
'2
(3
34
45
D6
E7
K8
L9
R10
S11
Y12
Z13
`14
a15
g16
h17
 

R0
S1
`2
a3
­
	variables
slayer_metrics
tmetrics
unon_trainable_variables

vlayers
wlayer_regularization_losses
regularization_losses
trainable_variables
 
 
 
WU
VARIABLE_VALUEbl_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 
 
­
	variables
xlayer_metrics
ymetrics
znon_trainable_variables

{layers
|layer_regularization_losses
regularization_losses
 trainable_variables
 
 
 
 
¯
#	variables
}layer_metrics
~metrics
non_trainable_variables
layers
 layer_regularization_losses
$regularization_losses
%trainable_variables
WU
VARIABLE_VALUEbl_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1
 
 
²
*	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
+regularization_losses
,trainable_variables
 
 
 
 
²
/	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
0regularization_losses
1trainable_variables
WU
VARIABLE_VALUEbl_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41
 
 
²
6	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
7regularization_losses
8trainable_variables
 
 
 
 
²
;	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
<regularization_losses
=trainable_variables
 
 
 
 
²
@	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
Aregularization_losses
Btrainable_variables
WU
VARIABLE_VALUEbb_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1
 
 
²
G	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
Hregularization_losses
Itrainable_variables
WU
VARIABLE_VALUEbb_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1
 
 
²
N	variables
 layer_metrics
¡metrics
¢non_trainable_variables
£layers
 ¤layer_regularization_losses
Oregularization_losses
Ptrainable_variables
WU
VARIABLE_VALUEcl_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	cl_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1
 

R0
S1
²
U	variables
¥layer_metrics
¦metrics
§non_trainable_variables
¨layers
 ©layer_regularization_losses
Vregularization_losses
Wtrainable_variables
WU
VARIABLE_VALUEbb_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Y0
Z1
 
 
²
\	variables
ªlayer_metrics
«metrics
¬non_trainable_variables
­layers
 ®layer_regularization_losses
]regularization_losses
^trainable_variables
b`
VARIABLE_VALUEclassifier_head/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEclassifier_head/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

`0
a1
 

`0
a1
²
c	variables
¯layer_metrics
°metrics
±non_trainable_variables
²layers
 ³layer_regularization_losses
dregularization_losses
etrainable_variables
\Z
VARIABLE_VALUEbbox_head/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbbox_head/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1
 
 
²
j	variables
´layer_metrics
µmetrics
¶non_trainable_variables
·layers
 ¸layer_regularization_losses
kregularization_losses
ltrainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
(
¹0
º1
»2
¼3
½4
f
0
1
'2
(3
34
45
D6
E7
K8
L9
Y10
Z11
g12
h13
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
 
 
 

0
1
 
 
 
 
 
 
 
 
 

'0
(1
 
 
 
 
 
 
 
 
 

30
41
 
 
 
 
 
 
 
 
 
 
 
 
 
 

D0
E1
 
 
 
 

K0
L1
 
 
 
 
 
 
 
 
 

Y0
Z1
 
 
 
 
 
 
 
 
 

g0
h1
 
 
8

¾total

¿count
À	variables
Á	keras_api
8

Âtotal

Ãcount
Ä	variables
Å	keras_api
8

Ætotal

Çcount
È	variables
É	keras_api
I

Êtotal

Ëcount
Ì
_fn_kwargs
Í	variables
Î	keras_api
I

Ïtotal

Ðcount
Ñ
_fn_kwargs
Ò	variables
Ó	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

¾0
¿1

À	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

Â0
Ã1

Ä	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

Æ0
Ç1

È	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ê0
Ë1

Í	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ï0
Ð1

Ò	variables
zx
VARIABLE_VALUEAdam/cl_1/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/classifier_head/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/classifier_head/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/cl_1/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/classifier_head/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/classifier_head/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿØØ
ã
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1bl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biasbb_1/kernel	bb_1/biasbb_2/kernel	bb_2/biasbb_3/kernel	bb_3/biascl_1/kernel	cl_1/biasbbox_head/kernelbbox_head/biasclassifier_head/kernelclassifier_head/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_9547
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ñ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebl_2/kernel/Read/ReadVariableOpbl_2/bias/Read/ReadVariableOpbl_4/kernel/Read/ReadVariableOpbl_4/bias/Read/ReadVariableOpbl_6/kernel/Read/ReadVariableOpbl_6/bias/Read/ReadVariableOpbb_1/kernel/Read/ReadVariableOpbb_1/bias/Read/ReadVariableOpbb_2/kernel/Read/ReadVariableOpbb_2/bias/Read/ReadVariableOpcl_1/kernel/Read/ReadVariableOpcl_1/bias/Read/ReadVariableOpbb_3/kernel/Read/ReadVariableOpbb_3/bias/Read/ReadVariableOp*classifier_head/kernel/Read/ReadVariableOp(classifier_head/bias/Read/ReadVariableOp$bbox_head/kernel/Read/ReadVariableOp"bbox_head/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp&Adam/cl_1/kernel/m/Read/ReadVariableOp$Adam/cl_1/bias/m/Read/ReadVariableOp1Adam/classifier_head/kernel/m/Read/ReadVariableOp/Adam/classifier_head/bias/m/Read/ReadVariableOp&Adam/cl_1/kernel/v/Read/ReadVariableOp$Adam/cl_1/bias/v/Read/ReadVariableOp1Adam/classifier_head/kernel/v/Read/ReadVariableOp/Adam/classifier_head/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_10122

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biasbb_1/kernel	bb_1/biasbb_2/kernel	bb_2/biascl_1/kernel	cl_1/biasbb_3/kernel	bb_3/biasclassifier_head/kernelclassifier_head/biasbbox_head/kernelbbox_head/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4Adam/cl_1/kernel/mAdam/cl_1/bias/mAdam/classifier_head/kernel/mAdam/classifier_head/bias/mAdam/cl_1/kernel/vAdam/cl_1/bias/vAdam/classifier_head/kernel/vAdam/classifier_head/bias/v*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_10255ø¯	


#__inference_bb_1_layer_call_fn_9876

inputs
unknown:Àì
	unknown_0:	
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀì: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì
 
_user_specified_nameinputs
ËA
½
?__inference_model_layer_call_and_return_conditional_losses_9056

inputs#
	bl_2_8903:
	bl_2_8905:#
	bl_4_8921: 
	bl_4_8923: #
	bl_6_8939: @
	bl_6_8941:@
	bb_1_8965:Àì
	bb_1_8967:	
	bb_2_8982:	@
	bb_2_8984:@
	bb_3_8999:@ 
	bb_3_9001: 
	cl_1_9016:Àì
	cl_1_9018:	 
bbox_head_9033: 
bbox_head_9035:'
classifier_head_9049:	"
classifier_head_9051:
identity

identity_1¢bb_1/StatefulPartitionedCall¢bb_2/StatefulPartitionedCall¢bb_3/StatefulPartitionedCall¢!bbox_head/StatefulPartitionedCall¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢'classifier_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/add
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_8903	bl_2_8905*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_89022
bl_2/StatefulPartitionedCallð
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88502
bl_3/PartitionedCall
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_8921	bl_4_8923*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89202
bl_4/StatefulPartitionedCallð
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88622
bl_5/PartitionedCall
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_8939	bl_6_8941*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89382
bl_6/StatefulPartitionedCallð
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88742
bl_7/PartitionedCallâ
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89512
bl_8/PartitionedCall
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_8965	bb_1_8967*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89642
bb_1/StatefulPartitionedCall
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_8982	bb_2_8984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89812
bb_2/StatefulPartitionedCall
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_8999	bb_3_9001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89982
bb_3/StatefulPartitionedCall
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9016	cl_1_9018*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90152
cl_1/StatefulPartitionedCallµ
!bbox_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bbox_head_9033bbox_head_9035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_bbox_head_layer_call_and_return_conditional_losses_90322#
!bbox_head/StatefulPartitionedCallÓ
'classifier_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classifier_head_9049classifier_head_9051*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_classifier_head_layer_call_and_return_conditional_losses_90482)
'classifier_head/StatefulPartitionedCall«
IdentityIdentity0classifier_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity©

Identity_1Identity*bbox_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2F
!bbox_head/StatefulPartitionedCall!bbox_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2R
'classifier_head/StatefulPartitionedCall'classifier_head/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
¶

ó
>__inference_cl_1_layer_call_and_return_conditional_losses_9015

inputs3
matmul_readvariableop_resource:Àì.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀì: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì
 
_user_specified_nameinputs
ª
£
!__inference__traced_restore_10255
file_prefix6
assignvariableop_bl_2_kernel:*
assignvariableop_1_bl_2_bias:8
assignvariableop_2_bl_4_kernel: *
assignvariableop_3_bl_4_bias: 8
assignvariableop_4_bl_6_kernel: @*
assignvariableop_5_bl_6_bias:@3
assignvariableop_6_bb_1_kernel:Àì+
assignvariableop_7_bb_1_bias:	1
assignvariableop_8_bb_2_kernel:	@*
assignvariableop_9_bb_2_bias:@4
assignvariableop_10_cl_1_kernel:Àì,
assignvariableop_11_cl_1_bias:	1
assignvariableop_12_bb_3_kernel:@ +
assignvariableop_13_bb_3_bias: =
*assignvariableop_14_classifier_head_kernel:	6
(assignvariableop_15_classifier_head_bias:6
$assignvariableop_16_bbox_head_kernel: 0
"assignvariableop_17_bbox_head_bias:'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: #
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: %
assignvariableop_27_total_2: %
assignvariableop_28_count_2: %
assignvariableop_29_total_3: %
assignvariableop_30_count_3: %
assignvariableop_31_total_4: %
assignvariableop_32_count_4: ;
&assignvariableop_33_adam_cl_1_kernel_m:Àì3
$assignvariableop_34_adam_cl_1_bias_m:	D
1assignvariableop_35_adam_classifier_head_kernel_m:	=
/assignvariableop_36_adam_classifier_head_bias_m:;
&assignvariableop_37_adam_cl_1_kernel_v:Àì3
$assignvariableop_38_adam_cl_1_bias_v:	D
1assignvariableop_39_adam_classifier_head_kernel_v:	=
/assignvariableop_40_adam_classifier_head_bias_v:
identity_42¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*ª
value B*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesâ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¾
_output_shapes«
¨::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_bl_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¡
AssignVariableOp_1AssignVariableOpassignvariableop_1_bl_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2£
AssignVariableOp_2AssignVariableOpassignvariableop_2_bl_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¡
AssignVariableOp_3AssignVariableOpassignvariableop_3_bl_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_bl_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¡
AssignVariableOp_5AssignVariableOpassignvariableop_5_bl_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_bb_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¡
AssignVariableOp_7AssignVariableOpassignvariableop_7_bb_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_bb_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¡
AssignVariableOp_9AssignVariableOpassignvariableop_9_bb_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_cl_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¥
AssignVariableOp_11AssignVariableOpassignvariableop_11_cl_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_bb_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¥
AssignVariableOp_13AssignVariableOpassignvariableop_13_bb_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14²
AssignVariableOp_14AssignVariableOp*assignvariableop_14_classifier_head_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_classifier_head_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¬
AssignVariableOp_16AssignVariableOp$assignvariableop_16_bbox_head_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ª
AssignVariableOp_17AssignVariableOp"assignvariableop_17_bbox_head_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18¥
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19§
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20§
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¦
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22®
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¡
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¡
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25£
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26£
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27£
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28£
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29£
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_3Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30£
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_3Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31£
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_4Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32£
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_4Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33®
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_cl_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¬
AssignVariableOp_34AssignVariableOp$assignvariableop_34_adam_cl_1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¹
AssignVariableOp_35AssignVariableOp1assignvariableop_35_adam_classifier_head_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36·
AssignVariableOp_36AssignVariableOp/assignvariableop_36_adam_classifier_head_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37®
AssignVariableOp_37AssignVariableOp&assignvariableop_37_adam_cl_1_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38¬
AssignVariableOp_38AssignVariableOp$assignvariableop_38_adam_cl_1_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¹
AssignVariableOp_39AssignVariableOp1assignvariableop_39_adam_classifier_head_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40·
AssignVariableOp_40AssignVariableOp/assignvariableop_40_adam_classifier_head_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpä
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41×
Identity_42IdentityIdentity_41:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_42"#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
­

ô
C__inference_bbox_head_layer_call_and_return_conditional_losses_9966

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ª

ð
>__inference_bb_2_layer_call_and_return_conditional_losses_9887

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
ú
$__inference_model_layer_call_fn_9785

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:Àì
	unknown_6:	
	unknown_7:	@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:Àì

unknown_12:	

unknown_13: 

unknown_14:

unknown_15:	

unknown_16:
identity

identity_1¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_92962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
¶

ó
>__inference_cl_1_layer_call_and_return_conditional_losses_9907

inputs3
matmul_readvariableop_resource:Àì.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀì: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì
 
_user_specified_nameinputs
Â

#__inference_bl_2_layer_call_fn_9805

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_89022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿØØ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
«

.__inference_classifier_head_layer_call_fn_9955

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_classifier_head_layer_call_and_return_conditional_losses_90482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶

ó
>__inference_bb_1_layer_call_and_return_conditional_losses_9867

inputs3
matmul_readvariableop_resource:Àì.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀì: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì
 
_user_specified_nameinputs
¶

ó
>__inference_bb_1_layer_call_and_return_conditional_losses_8964

inputs3
matmul_readvariableop_resource:Àì.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀì: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì
 
_user_specified_nameinputs
ª

ð
>__inference_bb_2_layer_call_and_return_conditional_losses_8981

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


#__inference_cl_1_layer_call_fn_9916

inputs
unknown:Àì
	unknown_0:	
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀì: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì
 
_user_specified_nameinputs
¦

ï
>__inference_bb_3_layer_call_and_return_conditional_losses_9927

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ù	
û
I__inference_classifier_head_layer_call_and_return_conditional_losses_9048

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
b
¦
?__inference_model_layer_call_and_return_conditional_losses_9623

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#bb_1_matmul_readvariableop_resource:Àì3
$bb_1_biasadd_readvariableop_resource:	6
#bb_2_matmul_readvariableop_resource:	@2
$bb_2_biasadd_readvariableop_resource:@5
#bb_3_matmul_readvariableop_resource:@ 2
$bb_3_biasadd_readvariableop_resource: 8
#cl_1_matmul_readvariableop_resource:Àì3
$cl_1_biasadd_readvariableop_resource:	:
(bbox_head_matmul_readvariableop_resource: 7
)bbox_head_biasadd_readvariableop_resource:A
.classifier_head_matmul_readvariableop_resource:	=
/classifier_head_biasadd_readvariableop_resource:
identity

identity_1¢bb_1/BiasAdd/ReadVariableOp¢bb_1/MatMul/ReadVariableOp¢bb_2/BiasAdd/ReadVariableOp¢bb_2/MatMul/ReadVariableOp¢bb_3/BiasAdd/ReadVariableOp¢bb_3/MatMul/ReadVariableOp¢ bbox_head/BiasAdd/ReadVariableOp¢bbox_head/MatMul/ReadVariableOp¢bl_2/BiasAdd/ReadVariableOp¢bl_2/Conv2D/ReadVariableOp¢bl_4/BiasAdd/ReadVariableOp¢bl_4/Conv2D/ReadVariableOp¢bl_6/BiasAdd/ReadVariableOp¢bl_6/Conv2D/ReadVariableOp¢cl_1/BiasAdd/ReadVariableOp¢cl_1/MatMul/ReadVariableOp¢&classifier_head/BiasAdd/ReadVariableOp¢%classifier_head/MatMul/ReadVariableOp_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/add¤
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
bl_2/Conv2D/ReadVariableOpº
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*
paddingSAME*
strides
2
bl_2/Conv2D
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
bl_2/BiasAdd/ReadVariableOp
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
bl_2/BiasAddq
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
	bl_2/Relu­
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll*
ksize
*
paddingVALID*
strides
2
bl_3/MaxPool¤
bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
bl_4/Conv2D/ReadVariableOpÁ
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *
paddingSAME*
strides
2
bl_4/Conv2D
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bl_4/BiasAdd/ReadVariableOp
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
bl_4/BiasAddo
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
	bl_4/Relu­
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 *
ksize
*
paddingVALID*
strides
2
bl_5/MaxPool¤
bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
bl_6/Conv2D/ReadVariableOpÁ
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingSAME*
strides
2
bl_6/Conv2D
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bl_6/BiasAdd/ReadVariableOp
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
bl_6/BiasAddo
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
	bl_6/Relu­
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
bl_7/MaxPooli

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@¶  2

bl_8/Const
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2
bl_8/Reshape
bb_1/MatMul/ReadVariableOpReadVariableOp#bb_1_matmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
bb_1/MatMul/ReadVariableOp
bb_1/MatMulMatMulbl_8/Reshape:output:0"bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bb_1/MatMul
bb_1/BiasAdd/ReadVariableOpReadVariableOp$bb_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
bb_1/BiasAdd/ReadVariableOp
bb_1/BiasAddBiasAddbb_1/MatMul:product:0#bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bb_1/BiasAddh
	bb_1/ReluRelubb_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	bb_1/Relu
bb_2/MatMul/ReadVariableOpReadVariableOp#bb_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
bb_2/MatMul/ReadVariableOp
bb_2/MatMulMatMulbb_1/Relu:activations:0"bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bb_2/MatMul
bb_2/BiasAdd/ReadVariableOpReadVariableOp$bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bb_2/BiasAdd/ReadVariableOp
bb_2/BiasAddBiasAddbb_2/MatMul:product:0#bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bb_2/BiasAddg
	bb_2/ReluRelubb_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	bb_2/Relu
bb_3/MatMul/ReadVariableOpReadVariableOp#bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
bb_3/MatMul/ReadVariableOp
bb_3/MatMulMatMulbb_2/Relu:activations:0"bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
bb_3/MatMul
bb_3/BiasAdd/ReadVariableOpReadVariableOp$bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bb_3/BiasAdd/ReadVariableOp
bb_3/BiasAddBiasAddbb_3/MatMul:product:0#bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
bb_3/BiasAddg
	bb_3/ReluRelubb_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	bb_3/Relu
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
cl_1/MatMul/ReadVariableOp
cl_1/MatMulMatMulbl_8/Reshape:output:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
cl_1/MatMul
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
cl_1/BiasAdd/ReadVariableOp
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
cl_1/BiasAddh
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	cl_1/Relu«
bbox_head/MatMul/ReadVariableOpReadVariableOp(bbox_head_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
bbox_head/MatMul/ReadVariableOp¢
bbox_head/MatMulMatMulbb_3/Relu:activations:0'bbox_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bbox_head/MatMulª
 bbox_head/BiasAdd/ReadVariableOpReadVariableOp)bbox_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 bbox_head/BiasAdd/ReadVariableOp©
bbox_head/BiasAddBiasAddbbox_head/MatMul:product:0(bbox_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bbox_head/BiasAdd
bbox_head/SigmoidSigmoidbbox_head/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bbox_head/Sigmoid¾
%classifier_head/MatMul/ReadVariableOpReadVariableOp.classifier_head_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02'
%classifier_head/MatMul/ReadVariableOp´
classifier_head/MatMulMatMulcl_1/Relu:activations:0-classifier_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
classifier_head/MatMul¼
&classifier_head/BiasAdd/ReadVariableOpReadVariableOp/classifier_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&classifier_head/BiasAdd/ReadVariableOpÁ
classifier_head/BiasAddBiasAdd classifier_head/MatMul:product:0.classifier_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
classifier_head/BiasAdd§
IdentityIdentity classifier_head/BiasAdd:output:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp!^bbox_head/BiasAdd/ReadVariableOp ^bbox_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp'^classifier_head/BiasAdd/ReadVariableOp&^classifier_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity 

Identity_1Identitybbox_head/Sigmoid:y:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp!^bbox_head/BiasAdd/ReadVariableOp ^bbox_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp'^classifier_head/BiasAdd/ReadVariableOp&^classifier_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 2:
bb_1/BiasAdd/ReadVariableOpbb_1/BiasAdd/ReadVariableOp28
bb_1/MatMul/ReadVariableOpbb_1/MatMul/ReadVariableOp2:
bb_2/BiasAdd/ReadVariableOpbb_2/BiasAdd/ReadVariableOp28
bb_2/MatMul/ReadVariableOpbb_2/MatMul/ReadVariableOp2:
bb_3/BiasAdd/ReadVariableOpbb_3/BiasAdd/ReadVariableOp28
bb_3/MatMul/ReadVariableOpbb_3/MatMul/ReadVariableOp2D
 bbox_head/BiasAdd/ReadVariableOp bbox_head/BiasAdd/ReadVariableOp2B
bbox_head/MatMul/ReadVariableOpbbox_head/MatMul/ReadVariableOp2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2P
&classifier_head/BiasAdd/ReadVariableOp&classifier_head/BiasAdd/ReadVariableOp2N
%classifier_head/MatMul/ReadVariableOp%classifier_head/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
b
¦
?__inference_model_layer_call_and_return_conditional_losses_9699

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#bb_1_matmul_readvariableop_resource:Àì3
$bb_1_biasadd_readvariableop_resource:	6
#bb_2_matmul_readvariableop_resource:	@2
$bb_2_biasadd_readvariableop_resource:@5
#bb_3_matmul_readvariableop_resource:@ 2
$bb_3_biasadd_readvariableop_resource: 8
#cl_1_matmul_readvariableop_resource:Àì3
$cl_1_biasadd_readvariableop_resource:	:
(bbox_head_matmul_readvariableop_resource: 7
)bbox_head_biasadd_readvariableop_resource:A
.classifier_head_matmul_readvariableop_resource:	=
/classifier_head_biasadd_readvariableop_resource:
identity

identity_1¢bb_1/BiasAdd/ReadVariableOp¢bb_1/MatMul/ReadVariableOp¢bb_2/BiasAdd/ReadVariableOp¢bb_2/MatMul/ReadVariableOp¢bb_3/BiasAdd/ReadVariableOp¢bb_3/MatMul/ReadVariableOp¢ bbox_head/BiasAdd/ReadVariableOp¢bbox_head/MatMul/ReadVariableOp¢bl_2/BiasAdd/ReadVariableOp¢bl_2/Conv2D/ReadVariableOp¢bl_4/BiasAdd/ReadVariableOp¢bl_4/Conv2D/ReadVariableOp¢bl_6/BiasAdd/ReadVariableOp¢bl_6/Conv2D/ReadVariableOp¢cl_1/BiasAdd/ReadVariableOp¢cl_1/MatMul/ReadVariableOp¢&classifier_head/BiasAdd/ReadVariableOp¢%classifier_head/MatMul/ReadVariableOp_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/add¤
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
bl_2/Conv2D/ReadVariableOpº
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*
paddingSAME*
strides
2
bl_2/Conv2D
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
bl_2/BiasAdd/ReadVariableOp
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
bl_2/BiasAddq
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
	bl_2/Relu­
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll*
ksize
*
paddingVALID*
strides
2
bl_3/MaxPool¤
bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
bl_4/Conv2D/ReadVariableOpÁ
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *
paddingSAME*
strides
2
bl_4/Conv2D
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bl_4/BiasAdd/ReadVariableOp
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
bl_4/BiasAddo
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
	bl_4/Relu­
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 *
ksize
*
paddingVALID*
strides
2
bl_5/MaxPool¤
bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
bl_6/Conv2D/ReadVariableOpÁ
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingSAME*
strides
2
bl_6/Conv2D
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bl_6/BiasAdd/ReadVariableOp
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
bl_6/BiasAddo
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
	bl_6/Relu­
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
bl_7/MaxPooli

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@¶  2

bl_8/Const
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2
bl_8/Reshape
bb_1/MatMul/ReadVariableOpReadVariableOp#bb_1_matmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
bb_1/MatMul/ReadVariableOp
bb_1/MatMulMatMulbl_8/Reshape:output:0"bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bb_1/MatMul
bb_1/BiasAdd/ReadVariableOpReadVariableOp$bb_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
bb_1/BiasAdd/ReadVariableOp
bb_1/BiasAddBiasAddbb_1/MatMul:product:0#bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bb_1/BiasAddh
	bb_1/ReluRelubb_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	bb_1/Relu
bb_2/MatMul/ReadVariableOpReadVariableOp#bb_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
bb_2/MatMul/ReadVariableOp
bb_2/MatMulMatMulbb_1/Relu:activations:0"bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bb_2/MatMul
bb_2/BiasAdd/ReadVariableOpReadVariableOp$bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bb_2/BiasAdd/ReadVariableOp
bb_2/BiasAddBiasAddbb_2/MatMul:product:0#bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
bb_2/BiasAddg
	bb_2/ReluRelubb_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	bb_2/Relu
bb_3/MatMul/ReadVariableOpReadVariableOp#bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
bb_3/MatMul/ReadVariableOp
bb_3/MatMulMatMulbb_2/Relu:activations:0"bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
bb_3/MatMul
bb_3/BiasAdd/ReadVariableOpReadVariableOp$bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bb_3/BiasAdd/ReadVariableOp
bb_3/BiasAddBiasAddbb_3/MatMul:product:0#bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
bb_3/BiasAddg
	bb_3/ReluRelubb_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
	bb_3/Relu
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02
cl_1/MatMul/ReadVariableOp
cl_1/MatMulMatMulbl_8/Reshape:output:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
cl_1/MatMul
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
cl_1/BiasAdd/ReadVariableOp
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
cl_1/BiasAddh
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	cl_1/Relu«
bbox_head/MatMul/ReadVariableOpReadVariableOp(bbox_head_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
bbox_head/MatMul/ReadVariableOp¢
bbox_head/MatMulMatMulbb_3/Relu:activations:0'bbox_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bbox_head/MatMulª
 bbox_head/BiasAdd/ReadVariableOpReadVariableOp)bbox_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 bbox_head/BiasAdd/ReadVariableOp©
bbox_head/BiasAddBiasAddbbox_head/MatMul:product:0(bbox_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bbox_head/BiasAdd
bbox_head/SigmoidSigmoidbbox_head/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
bbox_head/Sigmoid¾
%classifier_head/MatMul/ReadVariableOpReadVariableOp.classifier_head_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02'
%classifier_head/MatMul/ReadVariableOp´
classifier_head/MatMulMatMulcl_1/Relu:activations:0-classifier_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
classifier_head/MatMul¼
&classifier_head/BiasAdd/ReadVariableOpReadVariableOp/classifier_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&classifier_head/BiasAdd/ReadVariableOpÁ
classifier_head/BiasAddBiasAdd classifier_head/MatMul:product:0.classifier_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
classifier_head/BiasAdd§
IdentityIdentity classifier_head/BiasAdd:output:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp!^bbox_head/BiasAdd/ReadVariableOp ^bbox_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp'^classifier_head/BiasAdd/ReadVariableOp&^classifier_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity 

Identity_1Identitybbox_head/Sigmoid:y:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp!^bbox_head/BiasAdd/ReadVariableOp ^bbox_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp'^classifier_head/BiasAdd/ReadVariableOp&^classifier_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 2:
bb_1/BiasAdd/ReadVariableOpbb_1/BiasAdd/ReadVariableOp28
bb_1/MatMul/ReadVariableOpbb_1/MatMul/ReadVariableOp2:
bb_2/BiasAdd/ReadVariableOpbb_2/BiasAdd/ReadVariableOp28
bb_2/MatMul/ReadVariableOpbb_2/MatMul/ReadVariableOp2:
bb_3/BiasAdd/ReadVariableOpbb_3/BiasAdd/ReadVariableOp28
bb_3/MatMul/ReadVariableOpbb_3/MatMul/ReadVariableOp2D
 bbox_head/BiasAdd/ReadVariableOp bbox_head/BiasAdd/ReadVariableOp2B
bbox_head/MatMul/ReadVariableOpbbox_head/MatMul/ReadVariableOp2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2P
&classifier_head/BiasAdd/ReadVariableOp&classifier_head/BiasAdd/ReadVariableOp2N
%classifier_head/MatMul/ReadVariableOp%classifier_head/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
×
û
$__inference_model_layer_call_fn_9380
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:Àì
	unknown_6:	
	unknown_7:	@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:Àì

unknown_12:	

unknown_13: 

unknown_14:

unknown_15:	

unknown_16:
identity

identity_1¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_92962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
!
_user_specified_name	input_1

Z
>__inference_bl_7_layer_call_and_return_conditional_losses_8874

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù	
û
I__inference_classifier_head_layer_call_and_return_conditional_losses_9946

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

÷
>__inference_bl_6_layer_call_and_return_conditional_losses_8938

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ66 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 
 
_user_specified_nameinputs

÷
>__inference_bl_4_layer_call_and_return_conditional_losses_8920

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿll: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll
 
_user_specified_nameinputs
ÎA
¾
?__inference_model_layer_call_and_return_conditional_losses_9496
input_1#
	bl_2_9445:
	bl_2_9447:#
	bl_4_9451: 
	bl_4_9453: #
	bl_6_9457: @
	bl_6_9459:@
	bb_1_9464:Àì
	bb_1_9466:	
	bb_2_9469:	@
	bb_2_9471:@
	bb_3_9474:@ 
	bb_3_9476: 
	cl_1_9479:Àì
	cl_1_9481:	 
bbox_head_9484: 
bbox_head_9486:'
classifier_head_9489:	"
classifier_head_9491:
identity

identity_1¢bb_1/StatefulPartitionedCall¢bb_2/StatefulPartitionedCall¢bb_3/StatefulPartitionedCall¢!bbox_head/StatefulPartitionedCall¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢'classifier_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xv
bl_1/mulMulinput_1bl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/add
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_9445	bl_2_9447*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_89022
bl_2/StatefulPartitionedCallð
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88502
bl_3/PartitionedCall
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_9451	bl_4_9453*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89202
bl_4/StatefulPartitionedCallð
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88622
bl_5/PartitionedCall
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_9457	bl_6_9459*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89382
bl_6/StatefulPartitionedCallð
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88742
bl_7/PartitionedCallâ
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89512
bl_8/PartitionedCall
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_9464	bb_1_9466*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89642
bb_1/StatefulPartitionedCall
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_9469	bb_2_9471*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89812
bb_2/StatefulPartitionedCall
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_9474	bb_3_9476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89982
bb_3/StatefulPartitionedCall
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9479	cl_1_9481*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90152
cl_1/StatefulPartitionedCallµ
!bbox_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bbox_head_9484bbox_head_9486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_bbox_head_layer_call_and_return_conditional_losses_90322#
!bbox_head/StatefulPartitionedCallÓ
'classifier_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classifier_head_9489classifier_head_9491*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_classifier_head_layer_call_and_return_conditional_losses_90482)
'classifier_head/StatefulPartitionedCall«
IdentityIdentity0classifier_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity©

Identity_1Identity*bbox_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2F
!bbox_head/StatefulPartitionedCall!bbox_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2R
'classifier_head/StatefulPartitionedCall'classifier_head/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
!
_user_specified_name	input_1

÷
>__inference_bl_6_layer_call_and_return_conditional_losses_9836

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ66 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 
 
_user_specified_nameinputs
¤o
ß
__inference__wrapped_model_8844
input_1C
)model_bl_2_conv2d_readvariableop_resource:8
*model_bl_2_biasadd_readvariableop_resource:C
)model_bl_4_conv2d_readvariableop_resource: 8
*model_bl_4_biasadd_readvariableop_resource: C
)model_bl_6_conv2d_readvariableop_resource: @8
*model_bl_6_biasadd_readvariableop_resource:@>
)model_bb_1_matmul_readvariableop_resource:Àì9
*model_bb_1_biasadd_readvariableop_resource:	<
)model_bb_2_matmul_readvariableop_resource:	@8
*model_bb_2_biasadd_readvariableop_resource:@;
)model_bb_3_matmul_readvariableop_resource:@ 8
*model_bb_3_biasadd_readvariableop_resource: >
)model_cl_1_matmul_readvariableop_resource:Àì9
*model_cl_1_biasadd_readvariableop_resource:	@
.model_bbox_head_matmul_readvariableop_resource: =
/model_bbox_head_biasadd_readvariableop_resource:G
4model_classifier_head_matmul_readvariableop_resource:	C
5model_classifier_head_biasadd_readvariableop_resource:
identity

identity_1¢!model/bb_1/BiasAdd/ReadVariableOp¢ model/bb_1/MatMul/ReadVariableOp¢!model/bb_2/BiasAdd/ReadVariableOp¢ model/bb_2/MatMul/ReadVariableOp¢!model/bb_3/BiasAdd/ReadVariableOp¢ model/bb_3/MatMul/ReadVariableOp¢&model/bbox_head/BiasAdd/ReadVariableOp¢%model/bbox_head/MatMul/ReadVariableOp¢!model/bl_2/BiasAdd/ReadVariableOp¢ model/bl_2/Conv2D/ReadVariableOp¢!model/bl_4/BiasAdd/ReadVariableOp¢ model/bl_4/Conv2D/ReadVariableOp¢!model/bl_6/BiasAdd/ReadVariableOp¢ model/bl_6/Conv2D/ReadVariableOp¢!model/cl_1/BiasAdd/ReadVariableOp¢ model/cl_1/MatMul/ReadVariableOp¢,model/classifier_head/BiasAdd/ReadVariableOp¢+model/classifier_head/MatMul/ReadVariableOpk
model/bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
model/bl_1/Cast/xo
model/bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model/bl_1/Cast_1/x
model/bl_1/mulMulinput_1model/bl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
model/bl_1/mul
model/bl_1/addAddV2model/bl_1/mul:z:0model/bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
model/bl_1/add¶
 model/bl_2/Conv2D/ReadVariableOpReadVariableOp)model_bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 model/bl_2/Conv2D/ReadVariableOpÒ
model/bl_2/Conv2DConv2Dmodel/bl_1/add:z:0(model/bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*
paddingSAME*
strides
2
model/bl_2/Conv2D­
!model/bl_2/BiasAdd/ReadVariableOpReadVariableOp*model_bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!model/bl_2/BiasAdd/ReadVariableOp¶
model/bl_2/BiasAddBiasAddmodel/bl_2/Conv2D:output:0)model/bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
model/bl_2/BiasAdd
model/bl_2/ReluRelumodel/bl_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
model/bl_2/Relu¿
model/bl_3/MaxPoolMaxPoolmodel/bl_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll*
ksize
*
paddingVALID*
strides
2
model/bl_3/MaxPool¶
 model/bl_4/Conv2D/ReadVariableOpReadVariableOp)model_bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 model/bl_4/Conv2D/ReadVariableOpÙ
model/bl_4/Conv2DConv2Dmodel/bl_3/MaxPool:output:0(model/bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *
paddingSAME*
strides
2
model/bl_4/Conv2D­
!model/bl_4/BiasAdd/ReadVariableOpReadVariableOp*model_bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!model/bl_4/BiasAdd/ReadVariableOp´
model/bl_4/BiasAddBiasAddmodel/bl_4/Conv2D:output:0)model/bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
model/bl_4/BiasAdd
model/bl_4/ReluRelumodel/bl_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
model/bl_4/Relu¿
model/bl_5/MaxPoolMaxPoolmodel/bl_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 *
ksize
*
paddingVALID*
strides
2
model/bl_5/MaxPool¶
 model/bl_6/Conv2D/ReadVariableOpReadVariableOp)model_bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 model/bl_6/Conv2D/ReadVariableOpÙ
model/bl_6/Conv2DConv2Dmodel/bl_5/MaxPool:output:0(model/bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingSAME*
strides
2
model/bl_6/Conv2D­
!model/bl_6/BiasAdd/ReadVariableOpReadVariableOp*model_bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!model/bl_6/BiasAdd/ReadVariableOp´
model/bl_6/BiasAddBiasAddmodel/bl_6/Conv2D:output:0)model/bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
model/bl_6/BiasAdd
model/bl_6/ReluRelumodel/bl_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
model/bl_6/Relu¿
model/bl_7/MaxPoolMaxPoolmodel/bl_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
model/bl_7/MaxPoolu
model/bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@¶  2
model/bl_8/Const
model/bl_8/ReshapeReshapemodel/bl_7/MaxPool:output:0model/bl_8/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2
model/bl_8/Reshape±
 model/bb_1/MatMul/ReadVariableOpReadVariableOp)model_bb_1_matmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02"
 model/bb_1/MatMul/ReadVariableOpª
model/bb_1/MatMulMatMulmodel/bl_8/Reshape:output:0(model/bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/bb_1/MatMul®
!model/bb_1/BiasAdd/ReadVariableOpReadVariableOp*model_bb_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!model/bb_1/BiasAdd/ReadVariableOp®
model/bb_1/BiasAddBiasAddmodel/bb_1/MatMul:product:0)model/bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/bb_1/BiasAddz
model/bb_1/ReluRelumodel/bb_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/bb_1/Relu¯
 model/bb_2/MatMul/ReadVariableOpReadVariableOp)model_bb_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02"
 model/bb_2/MatMul/ReadVariableOp«
model/bb_2/MatMulMatMulmodel/bb_1/Relu:activations:0(model/bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/bb_2/MatMul­
!model/bb_2/BiasAdd/ReadVariableOpReadVariableOp*model_bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!model/bb_2/BiasAdd/ReadVariableOp­
model/bb_2/BiasAddBiasAddmodel/bb_2/MatMul:product:0)model/bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/bb_2/BiasAddy
model/bb_2/ReluRelumodel/bb_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model/bb_2/Relu®
 model/bb_3/MatMul/ReadVariableOpReadVariableOp)model_bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02"
 model/bb_3/MatMul/ReadVariableOp«
model/bb_3/MatMulMatMulmodel/bb_2/Relu:activations:0(model/bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model/bb_3/MatMul­
!model/bb_3/BiasAdd/ReadVariableOpReadVariableOp*model_bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!model/bb_3/BiasAdd/ReadVariableOp­
model/bb_3/BiasAddBiasAddmodel/bb_3/MatMul:product:0)model/bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model/bb_3/BiasAddy
model/bb_3/ReluRelumodel/bb_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model/bb_3/Relu±
 model/cl_1/MatMul/ReadVariableOpReadVariableOp)model_cl_1_matmul_readvariableop_resource*!
_output_shapes
:Àì*
dtype02"
 model/cl_1/MatMul/ReadVariableOpª
model/cl_1/MatMulMatMulmodel/bl_8/Reshape:output:0(model/cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/cl_1/MatMul®
!model/cl_1/BiasAdd/ReadVariableOpReadVariableOp*model_cl_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!model/cl_1/BiasAdd/ReadVariableOp®
model/cl_1/BiasAddBiasAddmodel/cl_1/MatMul:product:0)model/cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/cl_1/BiasAddz
model/cl_1/ReluRelumodel/cl_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/cl_1/Relu½
%model/bbox_head/MatMul/ReadVariableOpReadVariableOp.model_bbox_head_matmul_readvariableop_resource*
_output_shapes

: *
dtype02'
%model/bbox_head/MatMul/ReadVariableOpº
model/bbox_head/MatMulMatMulmodel/bb_3/Relu:activations:0-model/bbox_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/bbox_head/MatMul¼
&model/bbox_head/BiasAdd/ReadVariableOpReadVariableOp/model_bbox_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model/bbox_head/BiasAdd/ReadVariableOpÁ
model/bbox_head/BiasAddBiasAdd model/bbox_head/MatMul:product:0.model/bbox_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/bbox_head/BiasAdd
model/bbox_head/SigmoidSigmoid model/bbox_head/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/bbox_head/SigmoidÐ
+model/classifier_head/MatMul/ReadVariableOpReadVariableOp4model_classifier_head_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02-
+model/classifier_head/MatMul/ReadVariableOpÌ
model/classifier_head/MatMulMatMulmodel/cl_1/Relu:activations:03model/classifier_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/classifier_head/MatMulÎ
,model/classifier_head/BiasAdd/ReadVariableOpReadVariableOp5model_classifier_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,model/classifier_head/BiasAdd/ReadVariableOpÙ
model/classifier_head/BiasAddBiasAdd&model/classifier_head/MatMul:product:04model/classifier_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/classifier_head/BiasAdd
IdentityIdentitymodel/bbox_head/Sigmoid:y:0"^model/bb_1/BiasAdd/ReadVariableOp!^model/bb_1/MatMul/ReadVariableOp"^model/bb_2/BiasAdd/ReadVariableOp!^model/bb_2/MatMul/ReadVariableOp"^model/bb_3/BiasAdd/ReadVariableOp!^model/bb_3/MatMul/ReadVariableOp'^model/bbox_head/BiasAdd/ReadVariableOp&^model/bbox_head/MatMul/ReadVariableOp"^model/bl_2/BiasAdd/ReadVariableOp!^model/bl_2/Conv2D/ReadVariableOp"^model/bl_4/BiasAdd/ReadVariableOp!^model/bl_4/Conv2D/ReadVariableOp"^model/bl_6/BiasAdd/ReadVariableOp!^model/bl_6/Conv2D/ReadVariableOp"^model/cl_1/BiasAdd/ReadVariableOp!^model/cl_1/MatMul/ReadVariableOp-^model/classifier_head/BiasAdd/ReadVariableOp,^model/classifier_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity&model/classifier_head/BiasAdd:output:0"^model/bb_1/BiasAdd/ReadVariableOp!^model/bb_1/MatMul/ReadVariableOp"^model/bb_2/BiasAdd/ReadVariableOp!^model/bb_2/MatMul/ReadVariableOp"^model/bb_3/BiasAdd/ReadVariableOp!^model/bb_3/MatMul/ReadVariableOp'^model/bbox_head/BiasAdd/ReadVariableOp&^model/bbox_head/MatMul/ReadVariableOp"^model/bl_2/BiasAdd/ReadVariableOp!^model/bl_2/Conv2D/ReadVariableOp"^model/bl_4/BiasAdd/ReadVariableOp!^model/bl_4/Conv2D/ReadVariableOp"^model/bl_6/BiasAdd/ReadVariableOp!^model/bl_6/Conv2D/ReadVariableOp"^model/cl_1/BiasAdd/ReadVariableOp!^model/cl_1/MatMul/ReadVariableOp-^model/classifier_head/BiasAdd/ReadVariableOp,^model/classifier_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 2F
!model/bb_1/BiasAdd/ReadVariableOp!model/bb_1/BiasAdd/ReadVariableOp2D
 model/bb_1/MatMul/ReadVariableOp model/bb_1/MatMul/ReadVariableOp2F
!model/bb_2/BiasAdd/ReadVariableOp!model/bb_2/BiasAdd/ReadVariableOp2D
 model/bb_2/MatMul/ReadVariableOp model/bb_2/MatMul/ReadVariableOp2F
!model/bb_3/BiasAdd/ReadVariableOp!model/bb_3/BiasAdd/ReadVariableOp2D
 model/bb_3/MatMul/ReadVariableOp model/bb_3/MatMul/ReadVariableOp2P
&model/bbox_head/BiasAdd/ReadVariableOp&model/bbox_head/BiasAdd/ReadVariableOp2N
%model/bbox_head/MatMul/ReadVariableOp%model/bbox_head/MatMul/ReadVariableOp2F
!model/bl_2/BiasAdd/ReadVariableOp!model/bl_2/BiasAdd/ReadVariableOp2D
 model/bl_2/Conv2D/ReadVariableOp model/bl_2/Conv2D/ReadVariableOp2F
!model/bl_4/BiasAdd/ReadVariableOp!model/bl_4/BiasAdd/ReadVariableOp2D
 model/bl_4/Conv2D/ReadVariableOp model/bl_4/Conv2D/ReadVariableOp2F
!model/bl_6/BiasAdd/ReadVariableOp!model/bl_6/BiasAdd/ReadVariableOp2D
 model/bl_6/Conv2D/ReadVariableOp model/bl_6/Conv2D/ReadVariableOp2F
!model/cl_1/BiasAdd/ReadVariableOp!model/cl_1/BiasAdd/ReadVariableOp2D
 model/cl_1/MatMul/ReadVariableOp model/cl_1/MatMul/ReadVariableOp2\
,model/classifier_head/BiasAdd/ReadVariableOp,model/classifier_head/BiasAdd/ReadVariableOp2Z
+model/classifier_head/MatMul/ReadVariableOp+model/classifier_head/MatMul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
!
_user_specified_name	input_1

÷
>__inference_bl_2_layer_call_and_return_conditional_losses_8902

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿØØ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
â
Z
>__inference_bl_8_layer_call_and_return_conditional_losses_8951

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@¶  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Z
>__inference_bl_3_layer_call_and_return_conditional_losses_8850

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


#__inference_bb_3_layer_call_fn_9936

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


#__inference_bb_2_layer_call_fn_9896

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
?
#__inference_bl_7_layer_call_fn_8880

inputs
identityâ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88742
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õO
¹
__inference__traced_save_10122
file_prefix*
&savev2_bl_2_kernel_read_readvariableop(
$savev2_bl_2_bias_read_readvariableop*
&savev2_bl_4_kernel_read_readvariableop(
$savev2_bl_4_bias_read_readvariableop*
&savev2_bl_6_kernel_read_readvariableop(
$savev2_bl_6_bias_read_readvariableop*
&savev2_bb_1_kernel_read_readvariableop(
$savev2_bb_1_bias_read_readvariableop*
&savev2_bb_2_kernel_read_readvariableop(
$savev2_bb_2_bias_read_readvariableop*
&savev2_cl_1_kernel_read_readvariableop(
$savev2_cl_1_bias_read_readvariableop*
&savev2_bb_3_kernel_read_readvariableop(
$savev2_bb_3_bias_read_readvariableop5
1savev2_classifier_head_kernel_read_readvariableop3
/savev2_classifier_head_bias_read_readvariableop/
+savev2_bbox_head_kernel_read_readvariableop-
)savev2_bbox_head_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop1
-savev2_adam_cl_1_kernel_m_read_readvariableop/
+savev2_adam_cl_1_bias_m_read_readvariableop<
8savev2_adam_classifier_head_kernel_m_read_readvariableop:
6savev2_adam_classifier_head_bias_m_read_readvariableop1
-savev2_adam_cl_1_kernel_v_read_readvariableop/
+savev2_adam_cl_1_bias_v_read_readvariableop<
8savev2_adam_classifier_head_kernel_v_read_readvariableop:
6savev2_adam_classifier_head_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*ª
value B*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÜ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_bl_2_kernel_read_readvariableop$savev2_bl_2_bias_read_readvariableop&savev2_bl_4_kernel_read_readvariableop$savev2_bl_4_bias_read_readvariableop&savev2_bl_6_kernel_read_readvariableop$savev2_bl_6_bias_read_readvariableop&savev2_bb_1_kernel_read_readvariableop$savev2_bb_1_bias_read_readvariableop&savev2_bb_2_kernel_read_readvariableop$savev2_bb_2_bias_read_readvariableop&savev2_cl_1_kernel_read_readvariableop$savev2_cl_1_bias_read_readvariableop&savev2_bb_3_kernel_read_readvariableop$savev2_bb_3_bias_read_readvariableop1savev2_classifier_head_kernel_read_readvariableop/savev2_classifier_head_bias_read_readvariableop+savev2_bbox_head_kernel_read_readvariableop)savev2_bbox_head_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop-savev2_adam_cl_1_kernel_m_read_readvariableop+savev2_adam_cl_1_bias_m_read_readvariableop8savev2_adam_classifier_head_kernel_m_read_readvariableop6savev2_adam_classifier_head_bias_m_read_readvariableop-savev2_adam_cl_1_kernel_v_read_readvariableop+savev2_adam_cl_1_bias_v_read_readvariableop8savev2_adam_classifier_head_kernel_v_read_readvariableop6savev2_adam_classifier_head_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*³
_input_shapes¡
: ::: : : @:@:Àì::	@:@:Àì::@ : :	:: :: : : : : : : : : : : : : : : :Àì::	::Àì::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:Àì:!

_output_shapes	
::%	!

_output_shapes
:	@: 


_output_shapes
:@:'#
!
_output_shapes
:Àì:!

_output_shapes	
::$ 

_output_shapes

:@ : 

_output_shapes
: :%!

_output_shapes
:	: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :'"#
!
_output_shapes
:Àì:!#

_output_shapes	
::%$!

_output_shapes
:	: %

_output_shapes
::'&#
!
_output_shapes
:Àì:!'

_output_shapes	
::%(!

_output_shapes
:	: )

_output_shapes
::*

_output_shapes
: 

÷
>__inference_bl_4_layer_call_and_return_conditional_losses_9816

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿll: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll
 
_user_specified_nameinputs
¦

ï
>__inference_bb_3_layer_call_and_return_conditional_losses_8998

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ô
ú
$__inference_model_layer_call_fn_9742

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:Àì
	unknown_6:	
	unknown_7:	@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:Àì

unknown_12:	

unknown_13: 

unknown_14:

unknown_15:	

unknown_16:
identity

identity_1¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_90562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
ËA
½
?__inference_model_layer_call_and_return_conditional_losses_9296

inputs#
	bl_2_9245:
	bl_2_9247:#
	bl_4_9251: 
	bl_4_9253: #
	bl_6_9257: @
	bl_6_9259:@
	bb_1_9264:Àì
	bb_1_9266:	
	bb_2_9269:	@
	bb_2_9271:@
	bb_3_9274:@ 
	bb_3_9276: 
	cl_1_9279:Àì
	cl_1_9281:	 
bbox_head_9284: 
bbox_head_9286:'
classifier_head_9289:	"
classifier_head_9291:
identity

identity_1¢bb_1/StatefulPartitionedCall¢bb_2/StatefulPartitionedCall¢bb_3/StatefulPartitionedCall¢!bbox_head/StatefulPartitionedCall¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢'classifier_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/add
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_9245	bl_2_9247*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_89022
bl_2/StatefulPartitionedCallð
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88502
bl_3/PartitionedCall
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_9251	bl_4_9253*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89202
bl_4/StatefulPartitionedCallð
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88622
bl_5/PartitionedCall
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_9257	bl_6_9259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89382
bl_6/StatefulPartitionedCallð
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88742
bl_7/PartitionedCallâ
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89512
bl_8/PartitionedCall
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_9264	bb_1_9266*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89642
bb_1/StatefulPartitionedCall
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_9269	bb_2_9271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89812
bb_2/StatefulPartitionedCall
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_9274	bb_3_9276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89982
bb_3/StatefulPartitionedCall
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9279	cl_1_9281*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90152
cl_1/StatefulPartitionedCallµ
!bbox_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bbox_head_9284bbox_head_9286*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_bbox_head_layer_call_and_return_conditional_losses_90322#
!bbox_head/StatefulPartitionedCallÓ
'classifier_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classifier_head_9289classifier_head_9291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_classifier_head_layer_call_and_return_conditional_losses_90482)
'classifier_head/StatefulPartitionedCall«
IdentityIdentity0classifier_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity©

Identity_1Identity*bbox_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2F
!bbox_head/StatefulPartitionedCall!bbox_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2R
'classifier_head/StatefulPartitionedCall'classifier_head/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs

Z
>__inference_bl_5_layer_call_and_return_conditional_losses_8862

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
ù
"__inference_signature_wrapper_9547
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:Àì
	unknown_6:	
	unknown_7:	@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:Àì

unknown_12:	

unknown_13: 

unknown_14:

unknown_15:	

unknown_16:
identity

identity_1¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_88442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
!
_user_specified_name	input_1
º

#__inference_bl_4_layer_call_fn_9825

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿll: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿll
 
_user_specified_nameinputs
â
Z
>__inference_bl_8_layer_call_and_return_conditional_losses_9851

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@¶  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÎA
¾
?__inference_model_layer_call_and_return_conditional_losses_9438
input_1#
	bl_2_9387:
	bl_2_9389:#
	bl_4_9393: 
	bl_4_9395: #
	bl_6_9399: @
	bl_6_9401:@
	bb_1_9406:Àì
	bb_1_9408:	
	bb_2_9411:	@
	bb_2_9413:@
	bb_3_9416:@ 
	bb_3_9418: 
	cl_1_9421:Àì
	cl_1_9423:	 
bbox_head_9426: 
bbox_head_9428:'
classifier_head_9431:	"
classifier_head_9433:
identity

identity_1¢bb_1/StatefulPartitionedCall¢bb_2/StatefulPartitionedCall¢bb_3/StatefulPartitionedCall¢!bbox_head/StatefulPartitionedCall¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢'classifier_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xv
bl_1/mulMulinput_1bl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

bl_1/add
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_9387	bl_2_9389*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_89022
bl_2/StatefulPartitionedCallð
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88502
bl_3/PartitionedCall
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_9393	bl_4_9395*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89202
bl_4/StatefulPartitionedCallð
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88622
bl_5/PartitionedCall
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_9399	bl_6_9401*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89382
bl_6/StatefulPartitionedCallð
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88742
bl_7/PartitionedCallâ
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89512
bl_8/PartitionedCall
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_9406	bb_1_9408*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89642
bb_1/StatefulPartitionedCall
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_9411	bb_2_9413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89812
bb_2/StatefulPartitionedCall
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_9416	bb_3_9418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89982
bb_3/StatefulPartitionedCall
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9421	cl_1_9423*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90152
cl_1/StatefulPartitionedCallµ
!bbox_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bbox_head_9426bbox_head_9428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_bbox_head_layer_call_and_return_conditional_losses_90322#
!bbox_head/StatefulPartitionedCallÓ
'classifier_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classifier_head_9431classifier_head_9433*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_classifier_head_layer_call_and_return_conditional_losses_90482)
'classifier_head/StatefulPartitionedCall«
IdentityIdentity0classifier_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity©

Identity_1Identity*bbox_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall"^bbox_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall(^classifier_head/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2F
!bbox_head/StatefulPartitionedCall!bbox_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2R
'classifier_head/StatefulPartitionedCall'classifier_head/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
!
_user_specified_name	input_1
×
û
$__inference_model_layer_call_fn_9097
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:Àì
	unknown_6:	
	unknown_7:	@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:Àì

unknown_12:	

unknown_13: 

unknown_14:

unknown_15:	

unknown_16:
identity

identity_1¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_90562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿØØ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
!
_user_specified_name	input_1


(__inference_bbox_head_layer_call_fn_9975

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_bbox_head_layer_call_and_return_conditional_losses_90322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
À
?
#__inference_bl_3_layer_call_fn_8856

inputs
identityâ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88502
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º

#__inference_bl_6_layer_call_fn_9845

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ66 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 
 
_user_specified_nameinputs

÷
>__inference_bl_2_layer_call_and_return_conditional_losses_9796

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¥
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿØØ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿØØ
 
_user_specified_nameinputs
À
?
#__inference_bl_5_layer_call_fn_8868

inputs
identityâ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88622
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
?
#__inference_bl_8_layer_call_fn_9856

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89512
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀì2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­

ô
C__inference_bbox_head_layer_call_and_return_conditional_losses_9032

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*û
serving_defaultç
E
input_1:
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿØØ=
	bbox_head0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿC
classifier_head0
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ûÍ

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+Ü&call_and_return_all_conditional_losses
Ý__call__
Þ_default_save_signature"é}
_tf_keras_networkÍ}{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Rescaling", "config": {"name": "bl_1", "trainable": false, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "bl_1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "bl_2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_2", "inbound_nodes": [[["bl_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "bl_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_3", "inbound_nodes": [[["bl_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "bl_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_4", "inbound_nodes": [[["bl_3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "bl_5", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_5", "inbound_nodes": [[["bl_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "bl_6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_6", "inbound_nodes": [[["bl_5", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "bl_7", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_7", "inbound_nodes": [[["bl_6", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "bl_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "bl_8", "inbound_nodes": [[["bl_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bb_1", "trainable": false, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bb_2", "trainable": false, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_2", "inbound_nodes": [[["bb_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "cl_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "cl_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bb_3", "trainable": false, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_3", "inbound_nodes": [[["bb_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "classifier_head", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "classifier_head", "inbound_nodes": [[["cl_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bbox_head", "trainable": false, "dtype": "float32", "units": 4, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bbox_head", "inbound_nodes": [[["bb_3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["classifier_head", 0, 0], ["bbox_head", 0, 0]]}, "shared_object_id": 33, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 216, 216, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 216, 216, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Rescaling", "config": {"name": "bl_1", "trainable": false, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "bl_1", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "bl_2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_2", "inbound_nodes": [[["bl_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "MaxPooling2D", "config": {"name": "bl_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_3", "inbound_nodes": [[["bl_2", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "bl_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_4", "inbound_nodes": [[["bl_3", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "MaxPooling2D", "config": {"name": "bl_5", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_5", "inbound_nodes": [[["bl_4", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "bl_6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_6", "inbound_nodes": [[["bl_5", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "MaxPooling2D", "config": {"name": "bl_7", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_7", "inbound_nodes": [[["bl_6", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Flatten", "config": {"name": "bl_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "bl_8", "inbound_nodes": [[["bl_7", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "bb_1", "trainable": false, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "bb_2", "trainable": false, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_2", "inbound_nodes": [[["bb_1", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Dense", "config": {"name": "cl_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "cl_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "bb_3", "trainable": false, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_3", "inbound_nodes": [[["bb_2", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "Dense", "config": {"name": "classifier_head", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "classifier_head", "inbound_nodes": [[["cl_1", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "Dense", "config": {"name": "bbox_head", "trainable": false, "dtype": "float32", "units": 4, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bbox_head", "inbound_nodes": [[["bb_3", 0, 0, {}]]], "shared_object_id": 32}], "input_layers": [["input_1", 0, 0]], "output_layers": [["classifier_head", 0, 0], ["bbox_head", 0, 0]]}}, "training_config": {"loss": {"classifier_head": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 35}, "bbox_head": "mean_squared_error"}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "classifier_head_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 36}], [{"class_name": "MeanMetricWrapper", "config": {"name": "bbox_head_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 37}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
¢
#_self_saveable_object_factories"ú
_tf_keras_input_layerÚ{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
Ç
#_self_saveable_object_factories
	keras_api"
_tf_keras_layerö{"name": "bl_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "bl_1", "trainable": false, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}


kernel
bias
#_self_saveable_object_factories
	variables
regularization_losses
 trainable_variables
!	keras_api
+ß&call_and_return_all_conditional_losses
à__call__"Í	
_tf_keras_layer³	{"name": "bl_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "bl_2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_1", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 216, 216, 3]}}
ê
#"_self_saveable_object_factories
#	variables
$regularization_losses
%trainable_variables
&	keras_api
+á&call_and_return_all_conditional_losses
â__call__"´
_tf_keras_layer{"name": "bl_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "bl_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["bl_2", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}


'kernel
(bias
#)_self_saveable_object_factories
*	variables
+regularization_losses
,trainable_variables
-	keras_api
+ã&call_and_return_all_conditional_losses
ä__call__"Ï	
_tf_keras_layerµ	{"name": "bl_4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "bl_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_3", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 108, 108, 16]}}
ê
#._self_saveable_object_factories
/	variables
0regularization_losses
1trainable_variables
2	keras_api
+å&call_and_return_all_conditional_losses
æ__call__"´
_tf_keras_layer{"name": "bl_5", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "bl_5", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["bl_4", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 41}}


3kernel
4bias
#5_self_saveable_object_factories
6	variables
7regularization_losses
8trainable_variables
9	keras_api
+ç&call_and_return_all_conditional_losses
è__call__"Ð	
_tf_keras_layer¶	{"name": "bl_6", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "bl_6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_5", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 54, 54, 32]}}
ë
#:_self_saveable_object_factories
;	variables
<regularization_losses
=trainable_variables
>	keras_api
+é&call_and_return_all_conditional_losses
ê__call__"µ
_tf_keras_layer{"name": "bl_7", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "bl_7", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["bl_6", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}
Ü
#?_self_saveable_object_factories
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
+ë&call_and_return_all_conditional_losses
ì__call__"¦
_tf_keras_layer{"name": "bl_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "bl_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["bl_7", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 44}}
£	

Dkernel
Ebias
#F_self_saveable_object_factories
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
+í&call_and_return_all_conditional_losses
î__call__"×
_tf_keras_layer½{"name": "bb_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bb_1", "trainable": false, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 46656}}, "shared_object_id": 45}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 46656]}}
	

Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
+ï&call_and_return_all_conditional_losses
ð__call__"Ò
_tf_keras_layer¸{"name": "bb_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bb_2", "trainable": false, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bb_1", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
¡	

Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
+ñ&call_and_return_all_conditional_losses
ò__call__"Õ
_tf_keras_layer»{"name": "cl_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "cl_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 46656}}, "shared_object_id": 47}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 46656]}}
	

Ykernel
Zbias
#[_self_saveable_object_factories
\	variables
]regularization_losses
^trainable_variables
_	keras_api
+ó&call_and_return_all_conditional_losses
ô__call__"Ð
_tf_keras_layer¶{"name": "bb_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bb_3", "trainable": false, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bb_2", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
³	

`kernel
abias
#b_self_saveable_object_factories
c	variables
dregularization_losses
etrainable_variables
f	keras_api
+õ&call_and_return_all_conditional_losses
ö__call__"ç
_tf_keras_layerÍ{"name": "classifier_head", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "classifier_head", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["cl_1", 0, 0, {}]]], "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
¨	

gkernel
hbias
#i_self_saveable_object_factories
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
+÷&call_and_return_all_conditional_losses
ø__call__"Ü
_tf_keras_layerÂ{"name": "bbox_head", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bbox_head", "trainable": false, "dtype": "float32", "units": 4, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bb_3", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
£
niter

obeta_1

pbeta_2
	qdecay
rlearning_rateRmÔSmÕ`mÖam×RvØSvÙ`vÚavÛ"
	optimizer
 "
trackable_dict_wrapper
-
ùserving_default"
signature_map
 "
trackable_dict_wrapper
¦
0
1
'2
(3
34
45
D6
E7
K8
L9
R10
S11
Y12
Z13
`14
a15
g16
h17"
trackable_list_wrapper
 "
trackable_list_wrapper
<
R0
S1
`2
a3"
trackable_list_wrapper
Î
	variables
slayer_metrics
tmetrics
unon_trainable_variables

vlayers
wlayer_regularization_losses
regularization_losses
trainable_variables
Ý__call__
Þ_default_save_signature
+Ü&call_and_return_all_conditional_losses
'Ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
%:#2bl_2/kernel
:2	bl_2/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
	variables
xlayer_metrics
ymetrics
znon_trainable_variables

{layers
|layer_regularization_losses
regularization_losses
 trainable_variables
à__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
#	variables
}layer_metrics
~metrics
non_trainable_variables
layers
 layer_regularization_losses
$regularization_losses
%trainable_variables
â__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
%:# 2bl_4/kernel
: 2	bl_4/bias
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
*	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
+regularization_losses
,trainable_variables
ä__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
/	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
0regularization_losses
1trainable_variables
æ__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
%:# @2bl_6/kernel
:@2	bl_6/bias
 "
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
6	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
7regularization_losses
8trainable_variables
è__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
;	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
<regularization_losses
=trainable_variables
ê__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
@	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
Aregularization_losses
Btrainable_variables
ì__call__
+ë&call_and_return_all_conditional_losses
'ë"call_and_return_conditional_losses"
_generic_user_object
 :Àì2bb_1/kernel
:2	bb_1/bias
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
G	variables
layer_metrics
metrics
non_trainable_variables
layers
 layer_regularization_losses
Hregularization_losses
Itrainable_variables
î__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
:	@2bb_2/kernel
:@2	bb_2/bias
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
N	variables
 layer_metrics
¡metrics
¢non_trainable_variables
£layers
 ¤layer_regularization_losses
Oregularization_losses
Ptrainable_variables
ð__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses"
_generic_user_object
 :Àì2cl_1/kernel
:2	cl_1/bias
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
µ
U	variables
¥layer_metrics
¦metrics
§non_trainable_variables
¨layers
 ©layer_regularization_losses
Vregularization_losses
Wtrainable_variables
ò__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses"
_generic_user_object
:@ 2bb_3/kernel
: 2	bb_3/bias
 "
trackable_dict_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
\	variables
ªlayer_metrics
«metrics
¬non_trainable_variables
­layers
 ®layer_regularization_losses
]regularization_losses
^trainable_variables
ô__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses"
_generic_user_object
):'	2classifier_head/kernel
": 2classifier_head/bias
 "
trackable_dict_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
µ
c	variables
¯layer_metrics
°metrics
±non_trainable_variables
²layers
 ³layer_regularization_losses
dregularization_losses
etrainable_variables
ö__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
_generic_user_object
":  2bbox_head/kernel
:2bbox_head/bias
 "
trackable_dict_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
j	variables
´layer_metrics
µmetrics
¶non_trainable_variables
·layers
 ¸layer_regularization_losses
kregularization_losses
ltrainable_variables
ø__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
H
¹0
º1
»2
¼3
½4"
trackable_list_wrapper

0
1
'2
(3
34
45
D6
E7
K8
L9
Y10
Z11
g12
h13"
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ø

¾total

¿count
À	variables
Á	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 51}
ø

Âtotal

Ãcount
Ä	variables
Å	keras_api"½
_tf_keras_metric¢{"class_name": "Mean", "name": "classifier_head_loss", "dtype": "float32", "config": {"name": "classifier_head_loss", "dtype": "float32"}, "shared_object_id": 52}
ì

Ætotal

Çcount
È	variables
É	keras_api"±
_tf_keras_metric{"class_name": "Mean", "name": "bbox_head_loss", "dtype": "float32", "config": {"name": "bbox_head_loss", "dtype": "float32"}, "shared_object_id": 53}
Ã

Êtotal

Ëcount
Ì
_fn_kwargs
Í	variables
Î	keras_api"÷
_tf_keras_metricÜ{"class_name": "MeanMetricWrapper", "name": "classifier_head_accuracy", "dtype": "float32", "config": {"name": "classifier_head_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 36}
°

Ïtotal

Ðcount
Ñ
_fn_kwargs
Ò	variables
Ó	keras_api"ä
_tf_keras_metricÉ{"class_name": "MeanMetricWrapper", "name": "bbox_head_accuracy", "dtype": "float32", "config": {"name": "bbox_head_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 37}
:  (2total
:  (2count
0
¾0
¿1"
trackable_list_wrapper
.
À	variables"
_generic_user_object
:  (2total
:  (2count
0
Â0
Ã1"
trackable_list_wrapper
.
Ä	variables"
_generic_user_object
:  (2total
:  (2count
0
Æ0
Ç1"
trackable_list_wrapper
.
È	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ê0
Ë1"
trackable_list_wrapper
.
Í	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ï0
Ð1"
trackable_list_wrapper
.
Ò	variables"
_generic_user_object
%:#Àì2Adam/cl_1/kernel/m
:2Adam/cl_1/bias/m
.:,	2Adam/classifier_head/kernel/m
':%2Adam/classifier_head/bias/m
%:#Àì2Adam/cl_1/kernel/v
:2Adam/cl_1/bias/v
.:,	2Adam/classifier_head/kernel/v
':%2Adam/classifier_head/bias/v
Ê2Ç
?__inference_model_layer_call_and_return_conditional_losses_9623
?__inference_model_layer_call_and_return_conditional_losses_9699
?__inference_model_layer_call_and_return_conditional_losses_9438
?__inference_model_layer_call_and_return_conditional_losses_9496À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
$__inference_model_layer_call_fn_9097
$__inference_model_layer_call_fn_9742
$__inference_model_layer_call_fn_9785
$__inference_model_layer_call_fn_9380À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ç2ä
__inference__wrapped_model_8844À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿØØ
è2å
>__inference_bl_2_layer_call_and_return_conditional_losses_9796¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_bl_2_layer_call_fn_9805¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¦2£
>__inference_bl_3_layer_call_and_return_conditional_losses_8850à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
#__inference_bl_3_layer_call_fn_8856à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
è2å
>__inference_bl_4_layer_call_and_return_conditional_losses_9816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_bl_4_layer_call_fn_9825¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¦2£
>__inference_bl_5_layer_call_and_return_conditional_losses_8862à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
#__inference_bl_5_layer_call_fn_8868à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
è2å
>__inference_bl_6_layer_call_and_return_conditional_losses_9836¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_bl_6_layer_call_fn_9845¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¦2£
>__inference_bl_7_layer_call_and_return_conditional_losses_8874à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
#__inference_bl_7_layer_call_fn_8880à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
è2å
>__inference_bl_8_layer_call_and_return_conditional_losses_9851¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_bl_8_layer_call_fn_9856¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
è2å
>__inference_bb_1_layer_call_and_return_conditional_losses_9867¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_bb_1_layer_call_fn_9876¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
è2å
>__inference_bb_2_layer_call_and_return_conditional_losses_9887¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_bb_2_layer_call_fn_9896¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
è2å
>__inference_cl_1_layer_call_and_return_conditional_losses_9907¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_cl_1_layer_call_fn_9916¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
è2å
>__inference_bb_3_layer_call_and_return_conditional_losses_9927¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Í2Ê
#__inference_bb_3_layer_call_fn_9936¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_classifier_head_layer_call_and_return_conditional_losses_9946¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_classifier_head_layer_call_fn_9955¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_bbox_head_layer_call_and_return_conditional_losses_9966¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_bbox_head_layer_call_fn_9975¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÉBÆ
"__inference_signature_wrapper_9547input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 é
__inference__wrapped_model_8844Å'(34DEKLYZRSgh`a:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿØØ
ª "sªp
0
	bbox_head# 
	bbox_headÿÿÿÿÿÿÿÿÿ
<
classifier_head)&
classifier_headÿÿÿÿÿÿÿÿÿ¡
>__inference_bb_1_layer_call_and_return_conditional_losses_9867_DE1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿÀì
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 y
#__inference_bb_1_layer_call_fn_9876RDE1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿÀì
ª "ÿÿÿÿÿÿÿÿÿ
>__inference_bb_2_layer_call_and_return_conditional_losses_9887]KL0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 w
#__inference_bb_2_layer_call_fn_9896PKL0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@
>__inference_bb_3_layer_call_and_return_conditional_losses_9927\YZ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 v
#__inference_bb_3_layer_call_fn_9936OYZ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ £
C__inference_bbox_head_layer_call_and_return_conditional_losses_9966\gh/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_bbox_head_layer_call_fn_9975Ogh/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ²
>__inference_bl_2_layer_call_and_return_conditional_losses_9796p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿØØ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿØØ
 
#__inference_bl_2_layer_call_fn_9805c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿØØ
ª ""ÿÿÿÿÿÿÿÿÿØØá
>__inference_bl_3_layer_call_and_return_conditional_losses_8850R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
#__inference_bl_3_layer_call_fn_8856R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ®
>__inference_bl_4_layer_call_and_return_conditional_losses_9816l'(7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿll
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿll 
 
#__inference_bl_4_layer_call_fn_9825_'(7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿll
ª " ÿÿÿÿÿÿÿÿÿll á
>__inference_bl_5_layer_call_and_return_conditional_losses_8862R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
#__inference_bl_5_layer_call_fn_8868R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ®
>__inference_bl_6_layer_call_and_return_conditional_losses_9836l347¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ66 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ66@
 
#__inference_bl_6_layer_call_fn_9845_347¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ66 
ª " ÿÿÿÿÿÿÿÿÿ66@á
>__inference_bl_7_layer_call_and_return_conditional_losses_8874R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
#__inference_bl_7_layer_call_fn_8880R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
>__inference_bl_8_layer_call_and_return_conditional_losses_9851b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "'¢$

0ÿÿÿÿÿÿÿÿÿÀì
 |
#__inference_bl_8_layer_call_fn_9856U7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÀì¡
>__inference_cl_1_layer_call_and_return_conditional_losses_9907_RS1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿÀì
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 y
#__inference_cl_1_layer_call_fn_9916RRS1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿÀì
ª "ÿÿÿÿÿÿÿÿÿª
I__inference_classifier_head_layer_call_and_return_conditional_losses_9946]`a0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_classifier_head_layer_call_fn_9955P`a0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿé
?__inference_model_layer_call_and_return_conditional_losses_9438¥'(34DEKLYZRSgh`aB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿØØ
p 

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 é
?__inference_model_layer_call_and_return_conditional_losses_9496¥'(34DEKLYZRSgh`aB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿØØ
p

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 è
?__inference_model_layer_call_and_return_conditional_losses_9623¤'(34DEKLYZRSgh`aA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿØØ
p 

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 è
?__inference_model_layer_call_and_return_conditional_losses_9699¤'(34DEKLYZRSgh`aA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿØØ
p

 
ª "K¢H
A>

0/0ÿÿÿÿÿÿÿÿÿ

0/1ÿÿÿÿÿÿÿÿÿ
 À
$__inference_model_layer_call_fn_9097'(34DEKLYZRSgh`aB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿØØ
p 

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿÀ
$__inference_model_layer_call_fn_9380'(34DEKLYZRSgh`aB¢?
8¢5
+(
input_1ÿÿÿÿÿÿÿÿÿØØ
p

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ¿
$__inference_model_layer_call_fn_9742'(34DEKLYZRSgh`aA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿØØ
p 

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ¿
$__inference_model_layer_call_fn_9785'(34DEKLYZRSgh`aA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿØØ
p

 
ª "=:

0ÿÿÿÿÿÿÿÿÿ

1ÿÿÿÿÿÿÿÿÿ÷
"__inference_signature_wrapper_9547Ð'(34DEKLYZRSgh`aE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿØØ"sªp
0
	bbox_head# 
	bbox_headÿÿÿÿÿÿÿÿÿ
<
classifier_head)&
classifier_headÿÿÿÿÿÿÿÿÿ