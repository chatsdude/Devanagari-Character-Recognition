??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
cnnv2/conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecnnv2/conv1/kernel
?
&cnnv2/conv1/kernel/Read/ReadVariableOpReadVariableOpcnnv2/conv1/kernel*&
_output_shapes
: *
dtype0
x
cnnv2/conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namecnnv2/conv1/bias
q
$cnnv2/conv1/bias/Read/ReadVariableOpReadVariableOpcnnv2/conv1/bias*
_output_shapes
: *
dtype0
?
cnnv2/conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_namecnnv2/conv2/kernel
?
&cnnv2/conv2/kernel/Read/ReadVariableOpReadVariableOpcnnv2/conv2/kernel*&
_output_shapes
: @*
dtype0
x
cnnv2/conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namecnnv2/conv2/bias
q
$cnnv2/conv2/bias/Read/ReadVariableOpReadVariableOpcnnv2/conv2/bias*
_output_shapes
:@*
dtype0
?
cnnv2/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
? ?*#
shared_namecnnv2/dense/kernel
{
&cnnv2/dense/kernel/Read/ReadVariableOpReadVariableOpcnnv2/dense/kernel* 
_output_shapes
:
? ?*
dtype0
y
cnnv2/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_namecnnv2/dense/bias
r
$cnnv2/dense/bias/Read/ReadVariableOpReadVariableOpcnnv2/dense/bias*
_output_shapes	
:?*
dtype0
?
cnnv2/logits/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?.*$
shared_namecnnv2/logits/kernel
|
'cnnv2/logits/kernel/Read/ReadVariableOpReadVariableOpcnnv2/logits/kernel*
_output_shapes
:	?.*
dtype0
z
cnnv2/logits/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*"
shared_namecnnv2/logits/bias
s
%cnnv2/logits/bias/Read/ReadVariableOpReadVariableOpcnnv2/logits/bias*
_output_shapes
:.*
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
?
Adam/cnnv2/conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/cnnv2/conv1/kernel/m
?
-Adam/cnnv2/conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv1/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/cnnv2/conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/cnnv2/conv1/bias/m

+Adam/cnnv2/conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv1/bias/m*
_output_shapes
: *
dtype0
?
Adam/cnnv2/conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/cnnv2/conv2/kernel/m
?
-Adam/cnnv2/conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv2/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/cnnv2/conv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/cnnv2/conv2/bias/m

+Adam/cnnv2/conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/cnnv2/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
? ?**
shared_nameAdam/cnnv2/dense/kernel/m
?
-Adam/cnnv2/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/dense/kernel/m* 
_output_shapes
:
? ?*
dtype0
?
Adam/cnnv2/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/cnnv2/dense/bias/m
?
+Adam/cnnv2/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/cnnv2/logits/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?.*+
shared_nameAdam/cnnv2/logits/kernel/m
?
.Adam/cnnv2/logits/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/logits/kernel/m*
_output_shapes
:	?.*
dtype0
?
Adam/cnnv2/logits/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*)
shared_nameAdam/cnnv2/logits/bias/m
?
,Adam/cnnv2/logits/bias/m/Read/ReadVariableOpReadVariableOpAdam/cnnv2/logits/bias/m*
_output_shapes
:.*
dtype0
?
Adam/cnnv2/conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/cnnv2/conv1/kernel/v
?
-Adam/cnnv2/conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv1/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/cnnv2/conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/cnnv2/conv1/bias/v

+Adam/cnnv2/conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv1/bias/v*
_output_shapes
: *
dtype0
?
Adam/cnnv2/conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/cnnv2/conv2/kernel/v
?
-Adam/cnnv2/conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv2/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/cnnv2/conv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/cnnv2/conv2/bias/v

+Adam/cnnv2/conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/conv2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/cnnv2/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
? ?**
shared_nameAdam/cnnv2/dense/kernel/v
?
-Adam/cnnv2/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/dense/kernel/v* 
_output_shapes
:
? ?*
dtype0
?
Adam/cnnv2/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/cnnv2/dense/bias/v
?
+Adam/cnnv2/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/cnnv2/logits/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?.*+
shared_nameAdam/cnnv2/logits/kernel/v
?
.Adam/cnnv2/logits/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/logits/kernel/v*
_output_shapes
:	?.*
dtype0
?
Adam/cnnv2/logits/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*)
shared_nameAdam/cnnv2/logits/bias/v
?
,Adam/cnnv2/logits/bias/v/Read/ReadVariableOpReadVariableOpAdam/cnnv2/logits/bias/v*
_output_shapes
:.*
dtype0

NoOpNoOp
?2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?1
value?1B?1 B?1
?

input_size
	conv1
maxpool1
	conv2
maxpool2
	dense
dropout

logits
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
h

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
R
)	variables
*trainable_variables
+regularization_losses
,	keras_api
h

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?
3iter

4beta_1

5beta_2
	6decay
7learning_ratemkmlmmmn#mo$mp-mq.mrvsvtvuvv#vw$vx-vy.vz
8
0
1
2
3
#4
$5
-6
.7
8
0
1
2
3
#4
$5
-6
.7
 
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics

	variables
trainable_variables
regularization_losses
 
OM
VARIABLE_VALUEcnnv2/conv1/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEcnnv2/conv1/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
OM
VARIABLE_VALUEcnnv2/conv2/kernel'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEcnnv2/conv2/bias%conv2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
 trainable_variables
!regularization_losses
OM
VARIABLE_VALUEcnnv2/dense/kernel'dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEcnnv2/dense/bias%dense/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
%	variables
&trainable_variables
'regularization_losses
 
 
 
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
)	variables
*trainable_variables
+regularization_losses
QO
VARIABLE_VALUEcnnv2/logits/kernel(logits/kernel/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEcnnv2/logits/bias&logits/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1

-0
.1
 
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
/	variables
0trainable_variables
1regularization_losses
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
1
0
1
2
3
4
5
6

`0
a1
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
 
 
 
 
 
 
 
 
 
4
	btotal
	ccount
d	variables
e	keras_api
D
	ftotal
	gcount
h
_fn_kwargs
i	variables
j	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

b0
c1

d	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

f0
g1

i	variables
rp
VARIABLE_VALUEAdam/cnnv2/conv1/kernel/mCconv1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/cnnv2/conv1/bias/mAconv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/cnnv2/conv2/kernel/mCconv2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/cnnv2/conv2/bias/mAconv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/cnnv2/dense/kernel/mCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/cnnv2/dense/bias/mAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/cnnv2/logits/kernel/mDlogits/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/cnnv2/logits/bias/mBlogits/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/cnnv2/conv1/kernel/vCconv1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/cnnv2/conv1/bias/vAconv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/cnnv2/conv2/kernel/vCconv2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/cnnv2/conv2/bias/vAconv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/cnnv2/dense/kernel/vCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/cnnv2/dense/bias/vAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/cnnv2/logits/kernel/vDlogits/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/cnnv2/logits/bias/vBlogits/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_1Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1cnnv2/conv1/kernelcnnv2/conv1/biascnnv2/conv2/kernelcnnv2/conv2/biascnnv2/dense/kernelcnnv2/dense/biascnnv2/logits/kernelcnnv2/logits/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_62131
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&cnnv2/conv1/kernel/Read/ReadVariableOp$cnnv2/conv1/bias/Read/ReadVariableOp&cnnv2/conv2/kernel/Read/ReadVariableOp$cnnv2/conv2/bias/Read/ReadVariableOp&cnnv2/dense/kernel/Read/ReadVariableOp$cnnv2/dense/bias/Read/ReadVariableOp'cnnv2/logits/kernel/Read/ReadVariableOp%cnnv2/logits/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/cnnv2/conv1/kernel/m/Read/ReadVariableOp+Adam/cnnv2/conv1/bias/m/Read/ReadVariableOp-Adam/cnnv2/conv2/kernel/m/Read/ReadVariableOp+Adam/cnnv2/conv2/bias/m/Read/ReadVariableOp-Adam/cnnv2/dense/kernel/m/Read/ReadVariableOp+Adam/cnnv2/dense/bias/m/Read/ReadVariableOp.Adam/cnnv2/logits/kernel/m/Read/ReadVariableOp,Adam/cnnv2/logits/bias/m/Read/ReadVariableOp-Adam/cnnv2/conv1/kernel/v/Read/ReadVariableOp+Adam/cnnv2/conv1/bias/v/Read/ReadVariableOp-Adam/cnnv2/conv2/kernel/v/Read/ReadVariableOp+Adam/cnnv2/conv2/bias/v/Read/ReadVariableOp-Adam/cnnv2/dense/kernel/v/Read/ReadVariableOp+Adam/cnnv2/dense/bias/v/Read/ReadVariableOp.Adam/cnnv2/logits/kernel/v/Read/ReadVariableOp,Adam/cnnv2/logits/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_62525
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecnnv2/conv1/kernelcnnv2/conv1/biascnnv2/conv2/kernelcnnv2/conv2/biascnnv2/dense/kernelcnnv2/dense/biascnnv2/logits/kernelcnnv2/logits/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/cnnv2/conv1/kernel/mAdam/cnnv2/conv1/bias/mAdam/cnnv2/conv2/kernel/mAdam/cnnv2/conv2/bias/mAdam/cnnv2/dense/kernel/mAdam/cnnv2/dense/bias/mAdam/cnnv2/logits/kernel/mAdam/cnnv2/logits/bias/mAdam/cnnv2/conv1/kernel/vAdam/cnnv2/conv1/bias/vAdam/cnnv2/conv2/kernel/vAdam/cnnv2/conv2/bias/vAdam/cnnv2/dense/kernel/vAdam/cnnv2/dense/bias/vAdam/cnnv2/logits/kernel/vAdam/cnnv2/logits/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_62634??
?
\
@__inference_pool2_layer_call_and_return_conditional_losses_62337

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
A
%__inference_pool1_layer_call_fn_62287

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_61784h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?	
?
%__inference_cnnv2_layer_call_fn_62173

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
? ?
	unknown_4:	?
	unknown_5:	?.
	unknown_6:.
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_cnnv2_layer_call_and_return_conditional_losses_61983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
%__inference_cnnv2_layer_call_fn_62152

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
? ?
	unknown_4:	?
	unknown_5:	?.
	unknown_6:.
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_cnnv2_layer_call_and_return_conditional_losses_61846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_conv1_layer_call_and_return_conditional_losses_62277

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
\
@__inference_pool1_layer_call_and_return_conditional_losses_62297

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62070
input_1%
conv1_62044: 
conv1_62046: %
conv2_62050: @
conv2_62052:@
dense_62058:
? ?
dense_62060:	?
logits_62063:	?.
logits_62065:.
identity??conv1/StatefulPartitionedCall?conv2/StatefulPartitionedCall?dense/StatefulPartitionedCall?logits/StatefulPartitionedCallf
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????           m
ReshapeReshapeinput_1Reshape/shape:output:0*
T0*/
_output_shapes
:?????????  ?
conv1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0conv1_62044conv1_62046*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_61774?
pool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_61784?
conv2/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_62050conv2_62052*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_61797?
pool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_61807`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
	Reshape_1Reshapepool2/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:?????????? ?
dense/StatefulPartitionedCallStatefulPartitionedCallReshape_1:output:0dense_62058dense_62060*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61822?
logits/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0logits_62063logits_62065*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_logits_layer_call_and_return_conditional_losses_61838m
SoftmaxSoftmax'logits/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????.`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????.?
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^dense/StatefulPartitionedCall^logits/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2@
logits/StatefulPartitionedCalllogits/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?	
?
A__inference_logits_layer_call_and_return_conditional_losses_61838

inputs1
matmul_readvariableop_resource:	?.-
biasadd_readvariableop_resource:.
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????._
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?.
?
 __inference__wrapped_model_61730
input_1D
*cnnv2_conv1_conv2d_readvariableop_resource: 9
+cnnv2_conv1_biasadd_readvariableop_resource: D
*cnnv2_conv2_conv2d_readvariableop_resource: @9
+cnnv2_conv2_biasadd_readvariableop_resource:@>
*cnnv2_dense_matmul_readvariableop_resource:
? ?:
+cnnv2_dense_biasadd_readvariableop_resource:	?>
+cnnv2_logits_matmul_readvariableop_resource:	?.:
,cnnv2_logits_biasadd_readvariableop_resource:.
identity??"cnnv2/conv1/BiasAdd/ReadVariableOp?!cnnv2/conv1/Conv2D/ReadVariableOp?"cnnv2/conv2/BiasAdd/ReadVariableOp?!cnnv2/conv2/Conv2D/ReadVariableOp?"cnnv2/dense/BiasAdd/ReadVariableOp?!cnnv2/dense/MatMul/ReadVariableOp?#cnnv2/logits/BiasAdd/ReadVariableOp?"cnnv2/logits/MatMul/ReadVariableOpl
cnnv2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????           y
cnnv2/ReshapeReshapeinput_1cnnv2/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????  ?
!cnnv2/conv1/Conv2D/ReadVariableOpReadVariableOp*cnnv2_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
cnnv2/conv1/Conv2DConv2Dcnnv2/Reshape:output:0)cnnv2/conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
?
"cnnv2/conv1/BiasAdd/ReadVariableOpReadVariableOp+cnnv2_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
cnnv2/conv1/BiasAddBiasAddcnnv2/conv1/Conv2D:output:0*cnnv2/conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   p
cnnv2/conv1/ReluRelucnnv2/conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   ?
cnnv2/pool1/MaxPoolMaxPoolcnnv2/conv1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
!cnnv2/conv2/Conv2D/ReadVariableOpReadVariableOp*cnnv2_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
cnnv2/conv2/Conv2DConv2Dcnnv2/pool1/MaxPool:output:0)cnnv2/conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
?
"cnnv2/conv2/BiasAdd/ReadVariableOpReadVariableOp+cnnv2_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
cnnv2/conv2/BiasAddBiasAddcnnv2/conv2/Conv2D:output:0*cnnv2/conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@p
cnnv2/conv2/ReluRelucnnv2/conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
cnnv2/pool2/MaxPoolMaxPoolcnnv2/conv2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
f
cnnv2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
cnnv2/Reshape_1Reshapecnnv2/pool2/MaxPool:output:0cnnv2/Reshape_1/shape:output:0*
T0*(
_output_shapes
:?????????? ?
!cnnv2/dense/MatMul/ReadVariableOpReadVariableOp*cnnv2_dense_matmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype0?
cnnv2/dense/MatMulMatMulcnnv2/Reshape_1:output:0)cnnv2/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"cnnv2/dense/BiasAdd/ReadVariableOpReadVariableOp+cnnv2_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
cnnv2/dense/BiasAddBiasAddcnnv2/dense/MatMul:product:0*cnnv2/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
cnnv2/dense/ReluRelucnnv2/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
"cnnv2/logits/MatMul/ReadVariableOpReadVariableOp+cnnv2_logits_matmul_readvariableop_resource*
_output_shapes
:	?.*
dtype0?
cnnv2/logits/MatMulMatMulcnnv2/dense/Relu:activations:0*cnnv2/logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.?
#cnnv2/logits/BiasAdd/ReadVariableOpReadVariableOp,cnnv2_logits_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
cnnv2/logits/BiasAddBiasAddcnnv2/logits/MatMul:product:0+cnnv2/logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.i
cnnv2/SoftmaxSoftmaxcnnv2/logits/BiasAdd:output:0*
T0*'
_output_shapes
:?????????.f
IdentityIdentitycnnv2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????.?
NoOpNoOp#^cnnv2/conv1/BiasAdd/ReadVariableOp"^cnnv2/conv1/Conv2D/ReadVariableOp#^cnnv2/conv2/BiasAdd/ReadVariableOp"^cnnv2/conv2/Conv2D/ReadVariableOp#^cnnv2/dense/BiasAdd/ReadVariableOp"^cnnv2/dense/MatMul/ReadVariableOp$^cnnv2/logits/BiasAdd/ReadVariableOp#^cnnv2/logits/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2H
"cnnv2/conv1/BiasAdd/ReadVariableOp"cnnv2/conv1/BiasAdd/ReadVariableOp2F
!cnnv2/conv1/Conv2D/ReadVariableOp!cnnv2/conv1/Conv2D/ReadVariableOp2H
"cnnv2/conv2/BiasAdd/ReadVariableOp"cnnv2/conv2/BiasAdd/ReadVariableOp2F
!cnnv2/conv2/Conv2D/ReadVariableOp!cnnv2/conv2/Conv2D/ReadVariableOp2H
"cnnv2/dense/BiasAdd/ReadVariableOp"cnnv2/dense/BiasAdd/ReadVariableOp2F
!cnnv2/dense/MatMul/ReadVariableOp!cnnv2/dense/MatMul/ReadVariableOp2J
#cnnv2/logits/BiasAdd/ReadVariableOp#cnnv2/logits/BiasAdd/ReadVariableOp2H
"cnnv2/logits/MatMul/ReadVariableOp"cnnv2/logits/MatMul/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?

?
@__inference_conv2_layer_call_and_return_conditional_losses_62317

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
&__inference_logits_layer_call_fn_62393

inputs
unknown:	?.
	unknown_0:.
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_logits_layer_call_and_return_conditional_losses_61838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
@__inference_cnnv2_layer_call_and_return_conditional_losses_61846

inputs%
conv1_61775: 
conv1_61777: %
conv2_61798: @
conv2_61800:@
dense_61823:
? ?
dense_61825:	?
logits_61839:	?.
logits_61841:.
identity??conv1/StatefulPartitionedCall?conv2/StatefulPartitionedCall?dense/StatefulPartitionedCall?logits/StatefulPartitionedCallf
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????           l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????  ?
conv1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0conv1_61775conv1_61777*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_61774?
pool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_61784?
conv2/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_61798conv2_61800*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_61797?
pool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_61807`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
	Reshape_1Reshapepool2/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:?????????? ?
dense/StatefulPartitionedCallStatefulPartitionedCallReshape_1:output:0dense_61823dense_61825*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61822?
logits/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0logits_61839logits_61841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_logits_layer_call_and_return_conditional_losses_61838m
SoftmaxSoftmax'logits/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????.`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????.?
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^dense/StatefulPartitionedCall^logits/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2@
logits/StatefulPartitionedCalllogits/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
%__inference_cnnv2_layer_call_fn_61865
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
? ?
	unknown_4:	?
	unknown_5:	?.
	unknown_6:.
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_cnnv2_layer_call_and_return_conditional_losses_61846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
\
@__inference_pool2_layer_call_and_return_conditional_losses_61807

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
\
@__inference_pool2_layer_call_and_return_conditional_losses_61751

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_62346

inputs
unknown:
? ?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61822p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
%__inference_conv2_layer_call_fn_62306

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_61797w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
%__inference_conv1_layer_call_fn_62266

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_61774w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
\
@__inference_pool2_layer_call_and_return_conditional_losses_62332

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_62634
file_prefix=
#assignvariableop_cnnv2_conv1_kernel: 1
#assignvariableop_1_cnnv2_conv1_bias: ?
%assignvariableop_2_cnnv2_conv2_kernel: @1
#assignvariableop_3_cnnv2_conv2_bias:@9
%assignvariableop_4_cnnv2_dense_kernel:
? ?2
#assignvariableop_5_cnnv2_dense_bias:	?9
&assignvariableop_6_cnnv2_logits_kernel:	?.2
$assignvariableop_7_cnnv2_logits_bias:.&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: G
-assignvariableop_17_adam_cnnv2_conv1_kernel_m: 9
+assignvariableop_18_adam_cnnv2_conv1_bias_m: G
-assignvariableop_19_adam_cnnv2_conv2_kernel_m: @9
+assignvariableop_20_adam_cnnv2_conv2_bias_m:@A
-assignvariableop_21_adam_cnnv2_dense_kernel_m:
? ?:
+assignvariableop_22_adam_cnnv2_dense_bias_m:	?A
.assignvariableop_23_adam_cnnv2_logits_kernel_m:	?.:
,assignvariableop_24_adam_cnnv2_logits_bias_m:.G
-assignvariableop_25_adam_cnnv2_conv1_kernel_v: 9
+assignvariableop_26_adam_cnnv2_conv1_bias_v: G
-assignvariableop_27_adam_cnnv2_conv2_kernel_v: @9
+assignvariableop_28_adam_cnnv2_conv2_bias_v:@A
-assignvariableop_29_adam_cnnv2_dense_kernel_v:
? ?:
+assignvariableop_30_adam_cnnv2_dense_bias_v:	?A
.assignvariableop_31_adam_cnnv2_logits_kernel_v:	?.:
,assignvariableop_32_adam_cnnv2_logits_bias_v:.
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB(logits/kernel/.ATTRIBUTES/VARIABLE_VALUEB&logits/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDlogits/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBlogits/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDlogits/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBlogits/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp#assignvariableop_cnnv2_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_cnnv2_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp%assignvariableop_2_cnnv2_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_cnnv2_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_cnnv2_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp#assignvariableop_5_cnnv2_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp&assignvariableop_6_cnnv2_logits_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_cnnv2_logits_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_cnnv2_conv1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_cnnv2_conv1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adam_cnnv2_conv2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_cnnv2_conv2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_cnnv2_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_cnnv2_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_cnnv2_logits_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_cnnv2_logits_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_cnnv2_conv1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_cnnv2_conv1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_cnnv2_conv2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_cnnv2_conv2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_cnnv2_dense_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_cnnv2_dense_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_cnnv2_logits_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_cnnv2_logits_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
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
?)
?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62211

inputs>
$conv1_conv2d_readvariableop_resource: 3
%conv1_biasadd_readvariableop_resource: >
$conv2_conv2d_readvariableop_resource: @3
%conv2_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
? ?4
%dense_biasadd_readvariableop_resource:	?8
%logits_matmul_readvariableop_resource:	?.4
&logits_biasadd_readvariableop_resource:.
identity??conv1/BiasAdd/ReadVariableOp?conv1/Conv2D/ReadVariableOp?conv2/BiasAdd/ReadVariableOp?conv2/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?logits/BiasAdd/ReadVariableOp?logits/MatMul/ReadVariableOpf
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????           l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????  ?
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv1/Conv2DConv2DReshape:output:0#conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
~
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   d

conv1/ReluReluconv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   ?
pool1/MaxPoolMaxPoolconv1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2/Conv2DConv2Dpool1/MaxPool:output:0#conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
~
conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2/BiasAddBiasAddconv2/Conv2D:output:0$conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@d

conv2/ReluReluconv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
pool2/MaxPoolMaxPoolconv2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   y
	Reshape_1Reshapepool2/MaxPool:output:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:?????????? ?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype0?
dense/MatMulMatMulReshape_1:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
logits/MatMul/ReadVariableOpReadVariableOp%logits_matmul_readvariableop_resource*
_output_shapes
:	?.*
dtype0?
logits/MatMulMatMuldense/Relu:activations:0$logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.?
logits/BiasAdd/ReadVariableOpReadVariableOp&logits_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
logits/BiasAddBiasAddlogits/MatMul:product:0%logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.]
SoftmaxSoftmaxlogits/BiasAdd:output:0*
T0*'
_output_shapes
:?????????.`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????.?
NoOpNoOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv2/BiasAdd/ReadVariableOp^conv2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^logits/BiasAdd/ReadVariableOp^logits/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv2/BiasAdd/ReadVariableOpconv2/BiasAdd/ReadVariableOp2:
conv2/Conv2D/ReadVariableOpconv2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
logits/BiasAdd/ReadVariableOplogits/BiasAdd/ReadVariableOp2<
logits/MatMul/ReadVariableOplogits/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
A
%__inference_pool2_layer_call_fn_62327

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_61807h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
#__inference_signature_wrapper_62131
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
? ?
	unknown_4:	?
	unknown_5:	?.
	unknown_6:.
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_61730o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
\
@__inference_pool1_layer_call_and_return_conditional_losses_61784

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_61974

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
@__inference_pool1_layer_call_and_return_conditional_losses_62292

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?#
?
@__inference_cnnv2_layer_call_and_return_conditional_losses_61983

inputs%
conv1_61943: 
conv1_61945: %
conv2_61949: @
conv2_61951:@
dense_61957:
? ?
dense_61959:	?
logits_61976:	?.
logits_61978:.
identity??conv1/StatefulPartitionedCall?conv2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?logits/StatefulPartitionedCallf
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????           l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????  ?
conv1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0conv1_61943conv1_61945*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_61774?
pool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_61784?
conv2/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_61949conv2_61951*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_61797?
pool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_61807`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
	Reshape_1Reshapepool2/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:?????????? ?
dense/StatefulPartitionedCallStatefulPartitionedCallReshape_1:output:0dense_61957dense_61959*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61822?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_61974?
logits/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0logits_61976logits_61978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_logits_layer_call_and_return_conditional_losses_61838m
SoftmaxSoftmax'logits/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????.`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????.?
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^logits/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2@
logits/StatefulPartitionedCalllogits/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62102
input_1%
conv1_62075: 
conv1_62077: %
conv2_62081: @
conv2_62083:@
dense_62089:
? ?
dense_62091:	?
logits_62095:	?.
logits_62097:.
identity??conv1/StatefulPartitionedCall?conv2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?logits/StatefulPartitionedCallf
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????           m
ReshapeReshapeinput_1Reshape/shape:output:0*
T0*/
_output_shapes
:?????????  ?
conv1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0conv1_62075conv1_62077*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_61774?
pool1/PartitionedCallPartitionedCall&conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_61784?
conv2/StatefulPartitionedCallStatefulPartitionedCallpool1/PartitionedCall:output:0conv2_62081conv2_62083*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_61797?
pool2/PartitionedCallPartitionedCall&conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_61807`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
	Reshape_1Reshapepool2/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:?????????? ?
dense/StatefulPartitionedCallStatefulPartitionedCallReshape_1:output:0dense_62089dense_62091*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_61822?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_61974?
logits/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0logits_62095logits_62097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_logits_layer_call_and_return_conditional_losses_61838m
SoftmaxSoftmax'logits/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????.`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????.?
NoOpNoOp^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^logits/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2@
logits/StatefulPartitionedCalllogits/StatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
A
%__inference_pool2_layer_call_fn_62322

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool2_layer_call_and_return_conditional_losses_61751?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
A
%__inference_pool1_layer_call_fn_62282

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_pool1_layer_call_and_return_conditional_losses_61739?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_62362

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_62010a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_62357

inputs2
matmul_readvariableop_resource:
? ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?	
?
A__inference_logits_layer_call_and_return_conditional_losses_62403

inputs1
matmul_readvariableop_resource:	?.-
biasadd_readvariableop_resource:.
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?.*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????._
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????.w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?1
?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62257

inputs>
$conv1_conv2d_readvariableop_resource: 3
%conv1_biasadd_readvariableop_resource: >
$conv2_conv2d_readvariableop_resource: @3
%conv2_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
? ?4
%dense_biasadd_readvariableop_resource:	?8
%logits_matmul_readvariableop_resource:	?.4
&logits_biasadd_readvariableop_resource:.
identity??conv1/BiasAdd/ReadVariableOp?conv1/Conv2D/ReadVariableOp?conv2/BiasAdd/ReadVariableOp?conv2/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?logits/BiasAdd/ReadVariableOp?logits/MatMul/ReadVariableOpf
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????           l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:?????????  ?
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv1/Conv2DConv2DReshape:output:0#conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
~
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   d

conv1/ReluReluconv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????   ?
pool1/MaxPoolMaxPoolconv1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2/Conv2DConv2Dpool1/MaxPool:output:0#conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
~
conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2/BiasAddBiasAddconv2/Conv2D:output:0$conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@d

conv2/ReluReluconv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@?
pool2/MaxPoolMaxPoolconv2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   y
	Reshape_1Reshapepool2/MaxPool:output:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:?????????? ?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype0?
dense/MatMulMatMulReshape_1:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
logits/MatMul/ReadVariableOpReadVariableOp%logits_matmul_readvariableop_resource*
_output_shapes
:	?.*
dtype0?
logits/MatMulMatMuldropout/dropout/Mul_1:z:0$logits/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.?
logits/BiasAdd/ReadVariableOpReadVariableOp&logits_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
logits/BiasAddBiasAddlogits/MatMul:product:0%logits/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????.]
SoftmaxSoftmaxlogits/BiasAdd:output:0*
T0*'
_output_shapes
:?????????.`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????.?
NoOpNoOp^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv2/BiasAdd/ReadVariableOp^conv2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^logits/BiasAdd/ReadVariableOp^logits/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv2/BiasAdd/ReadVariableOpconv2/BiasAdd/ReadVariableOp2:
conv2/Conv2D/ReadVariableOpconv2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
logits/BiasAdd/ReadVariableOplogits/BiasAdd/ReadVariableOp2<
logits/MatMul/ReadVariableOplogits/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_62010

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
@__inference_conv1_layer_call_and_return_conditional_losses_61774

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_61822

inputs2
matmul_readvariableop_resource:
? ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
? ?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?

?
@__inference_conv2_layer_call_and_return_conditional_losses_61797

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_62379

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
%__inference_cnnv2_layer_call_fn_62039
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
? ?
	unknown_4:	?
	unknown_5:	?.
	unknown_6:.
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????.**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_cnnv2_layer_call_and_return_conditional_losses_61983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_1
?
\
@__inference_pool1_layer_call_and_return_conditional_losses_61739

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_62384

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?E
?
__inference__traced_save_62525
file_prefix1
-savev2_cnnv2_conv1_kernel_read_readvariableop/
+savev2_cnnv2_conv1_bias_read_readvariableop1
-savev2_cnnv2_conv2_kernel_read_readvariableop/
+savev2_cnnv2_conv2_bias_read_readvariableop1
-savev2_cnnv2_dense_kernel_read_readvariableop/
+savev2_cnnv2_dense_bias_read_readvariableop2
.savev2_cnnv2_logits_kernel_read_readvariableop0
,savev2_cnnv2_logits_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_cnnv2_conv1_kernel_m_read_readvariableop6
2savev2_adam_cnnv2_conv1_bias_m_read_readvariableop8
4savev2_adam_cnnv2_conv2_kernel_m_read_readvariableop6
2savev2_adam_cnnv2_conv2_bias_m_read_readvariableop8
4savev2_adam_cnnv2_dense_kernel_m_read_readvariableop6
2savev2_adam_cnnv2_dense_bias_m_read_readvariableop9
5savev2_adam_cnnv2_logits_kernel_m_read_readvariableop7
3savev2_adam_cnnv2_logits_bias_m_read_readvariableop8
4savev2_adam_cnnv2_conv1_kernel_v_read_readvariableop6
2savev2_adam_cnnv2_conv1_bias_v_read_readvariableop8
4savev2_adam_cnnv2_conv2_kernel_v_read_readvariableop6
2savev2_adam_cnnv2_conv2_bias_v_read_readvariableop8
4savev2_adam_cnnv2_dense_kernel_v_read_readvariableop6
2savev2_adam_cnnv2_dense_bias_v_read_readvariableop9
5savev2_adam_cnnv2_logits_kernel_v_read_readvariableop7
3savev2_adam_cnnv2_logits_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB(logits/kernel/.ATTRIBUTES/VARIABLE_VALUEB&logits/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBDlogits/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBlogits/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCconv1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCconv2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAconv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBDlogits/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBlogits/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_cnnv2_conv1_kernel_read_readvariableop+savev2_cnnv2_conv1_bias_read_readvariableop-savev2_cnnv2_conv2_kernel_read_readvariableop+savev2_cnnv2_conv2_bias_read_readvariableop-savev2_cnnv2_dense_kernel_read_readvariableop+savev2_cnnv2_dense_bias_read_readvariableop.savev2_cnnv2_logits_kernel_read_readvariableop,savev2_cnnv2_logits_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_cnnv2_conv1_kernel_m_read_readvariableop2savev2_adam_cnnv2_conv1_bias_m_read_readvariableop4savev2_adam_cnnv2_conv2_kernel_m_read_readvariableop2savev2_adam_cnnv2_conv2_bias_m_read_readvariableop4savev2_adam_cnnv2_dense_kernel_m_read_readvariableop2savev2_adam_cnnv2_dense_bias_m_read_readvariableop5savev2_adam_cnnv2_logits_kernel_m_read_readvariableop3savev2_adam_cnnv2_logits_bias_m_read_readvariableop4savev2_adam_cnnv2_conv1_kernel_v_read_readvariableop2savev2_adam_cnnv2_conv1_bias_v_read_readvariableop4savev2_adam_cnnv2_conv2_kernel_v_read_readvariableop2savev2_adam_cnnv2_conv2_bias_v_read_readvariableop4savev2_adam_cnnv2_dense_kernel_v_read_readvariableop2savev2_adam_cnnv2_dense_bias_v_read_readvariableop5savev2_adam_cnnv2_logits_kernel_v_read_readvariableop3savev2_adam_cnnv2_logits_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:
? ?:?:	?.:.: : : : : : : : : : : : @:@:
? ?:?:	?.:.: : : @:@:
? ?:?:	?.:.: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
? ?:!

_output_shapes	
:?:%!

_output_shapes
:	?.: 

_output_shapes
:.:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
? ?:!

_output_shapes	
:?:%!

_output_shapes
:	?.: 

_output_shapes
:.:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
? ?:!

_output_shapes	
:?:% !

_output_shapes
:	?.: !

_output_shapes
:.:"

_output_shapes
: 
?
`
'__inference_dropout_layer_call_fn_62367

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_61974p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_11
serving_default_input_1:0??????????<
output_10
StatefulPartitionedCall:0?????????.tensorflow/serving/predict:??
?

input_size
	conv1
maxpool1
	conv2
maxpool2
	dense
dropout

logits
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
{__call__
*|&call_and_return_all_conditional_losses
}_default_save_signature"
_tf_keras_model
 "
trackable_list_wrapper
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
3iter

4beta_1

5beta_2
	6decay
7learning_ratemkmlmmmn#mo$mp-mq.mrvsvtvuvv#vw$vx-vy.vz"
	optimizer
X
0
1
2
3
#4
$5
-6
.7"
trackable_list_wrapper
X
0
1
2
3
#4
$5
-6
.7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics

	variables
trainable_variables
regularization_losses
{__call__
}_default_save_signature
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
,:* 2cnnv2/conv1/kernel
: 2cnnv2/conv1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:* @2cnnv2/conv2/kernel
:@2cnnv2/conv2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$
? ?2cnnv2/dense/kernel
:?2cnnv2/dense/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
%	variables
&trainable_variables
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
)	variables
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$	?.2cnnv2/logits/kernel
:.2cnnv2/logits/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
/	variables
0trainable_variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
.
`0
a1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	btotal
	ccount
d	variables
e	keras_api"
_tf_keras_metric
^
	ftotal
	gcount
h
_fn_kwargs
i	variables
j	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
b0
c1"
trackable_list_wrapper
-
d	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
f0
g1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
1:/ 2Adam/cnnv2/conv1/kernel/m
#:! 2Adam/cnnv2/conv1/bias/m
1:/ @2Adam/cnnv2/conv2/kernel/m
#:!@2Adam/cnnv2/conv2/bias/m
+:)
? ?2Adam/cnnv2/dense/kernel/m
$:"?2Adam/cnnv2/dense/bias/m
+:)	?.2Adam/cnnv2/logits/kernel/m
$:".2Adam/cnnv2/logits/bias/m
1:/ 2Adam/cnnv2/conv1/kernel/v
#:! 2Adam/cnnv2/conv1/bias/v
1:/ @2Adam/cnnv2/conv2/kernel/v
#:!@2Adam/cnnv2/conv2/bias/v
+:)
? ?2Adam/cnnv2/dense/kernel/v
$:"?2Adam/cnnv2/dense/bias/v
+:)	?.2Adam/cnnv2/logits/kernel/v
$:".2Adam/cnnv2/logits/bias/v
?2?
%__inference_cnnv2_layer_call_fn_61865
%__inference_cnnv2_layer_call_fn_62152
%__inference_cnnv2_layer_call_fn_62173
%__inference_cnnv2_layer_call_fn_62039?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62211
@__inference_cnnv2_layer_call_and_return_conditional_losses_62257
@__inference_cnnv2_layer_call_and_return_conditional_losses_62070
@__inference_cnnv2_layer_call_and_return_conditional_losses_62102?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_61730input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_conv1_layer_call_fn_62266?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_conv1_layer_call_and_return_conditional_losses_62277?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_pool1_layer_call_fn_62282
%__inference_pool1_layer_call_fn_62287?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_pool1_layer_call_and_return_conditional_losses_62292
@__inference_pool1_layer_call_and_return_conditional_losses_62297?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_conv2_layer_call_fn_62306?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_conv2_layer_call_and_return_conditional_losses_62317?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_pool2_layer_call_fn_62322
%__inference_pool2_layer_call_fn_62327?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_pool2_layer_call_and_return_conditional_losses_62332
@__inference_pool2_layer_call_and_return_conditional_losses_62337?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_62346?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_62357?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dropout_layer_call_fn_62362
'__inference_dropout_layer_call_fn_62367?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_62379
B__inference_dropout_layer_call_and_return_conditional_losses_62384?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_logits_layer_call_fn_62393?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_logits_layer_call_and_return_conditional_losses_62403?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_62131input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_61730r#$-.1?.
'?$
"?
input_1??????????
? "3?0
.
output_1"?
output_1?????????.?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62070h#$-.5?2
+?(
"?
input_1??????????
p 
? "%?"
?
0?????????.
? ?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62102h#$-.5?2
+?(
"?
input_1??????????
p
? "%?"
?
0?????????.
? ?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62211g#$-.4?1
*?'
!?
inputs??????????
p 
? "%?"
?
0?????????.
? ?
@__inference_cnnv2_layer_call_and_return_conditional_losses_62257g#$-.4?1
*?'
!?
inputs??????????
p
? "%?"
?
0?????????.
? ?
%__inference_cnnv2_layer_call_fn_61865[#$-.5?2
+?(
"?
input_1??????????
p 
? "??????????.?
%__inference_cnnv2_layer_call_fn_62039[#$-.5?2
+?(
"?
input_1??????????
p
? "??????????.?
%__inference_cnnv2_layer_call_fn_62152Z#$-.4?1
*?'
!?
inputs??????????
p 
? "??????????.?
%__inference_cnnv2_layer_call_fn_62173Z#$-.4?1
*?'
!?
inputs??????????
p
? "??????????.?
@__inference_conv1_layer_call_and_return_conditional_losses_62277l7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????   
? ?
%__inference_conv1_layer_call_fn_62266_7?4
-?*
(?%
inputs?????????  
? " ??????????   ?
@__inference_conv2_layer_call_and_return_conditional_losses_62317l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
%__inference_conv2_layer_call_fn_62306_7?4
-?*
(?%
inputs????????? 
? " ??????????@?
@__inference_dense_layer_call_and_return_conditional_losses_62357^#$0?-
&?#
!?
inputs?????????? 
? "&?#
?
0??????????
? z
%__inference_dense_layer_call_fn_62346Q#$0?-
&?#
!?
inputs?????????? 
? "????????????
B__inference_dropout_layer_call_and_return_conditional_losses_62379^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_62384^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? |
'__inference_dropout_layer_call_fn_62362Q4?1
*?'
!?
inputs??????????
p 
? "???????????|
'__inference_dropout_layer_call_fn_62367Q4?1
*?'
!?
inputs??????????
p
? "????????????
A__inference_logits_layer_call_and_return_conditional_losses_62403]-.0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????.
? z
&__inference_logits_layer_call_fn_62393P-.0?-
&?#
!?
inputs??????????
? "??????????.?
@__inference_pool1_layer_call_and_return_conditional_losses_62292?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
@__inference_pool1_layer_call_and_return_conditional_losses_62297h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0????????? 
? ?
%__inference_pool1_layer_call_fn_62282?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
%__inference_pool1_layer_call_fn_62287[7?4
-?*
(?%
inputs?????????   
? " ?????????? ?
@__inference_pool2_layer_call_and_return_conditional_losses_62332?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
@__inference_pool2_layer_call_and_return_conditional_losses_62337h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
%__inference_pool2_layer_call_fn_62322?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
%__inference_pool2_layer_call_fn_62327[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
#__inference_signature_wrapper_62131}#$-.<?9
? 
2?/
-
input_1"?
input_1??????????"3?0
.
output_1"?
output_1?????????.