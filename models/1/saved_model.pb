®ï
¤ù
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
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
executor_typestring ¨
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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Øè
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	@*
dtype0

Adam/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/v
{
)Adam/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_11/kernel/v

+Adam/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_10/bias/v
{
)Adam/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_10/kernel/v

+Adam/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_9/bias/v
y
(Adam/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_9/kernel/v

*Adam/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_8/bias/v
y
(Adam/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_8/kernel/v

*Adam/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/v
y
(Adam/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_7/kernel/v

*Adam/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_6/bias/v
y
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_6/kernel/v

*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	@*
dtype0

Adam/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_11/bias/m
{
)Adam/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_11/kernel/m

+Adam/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_11/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_10/bias/m
{
)Adam/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_10/kernel/m

+Adam/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_10/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_9/bias/m
y
(Adam/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_9/kernel/m

*Adam/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_9/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_8/bias/m
y
(Adam/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_8/kernel/m

*Adam/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_8/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_7/bias/m
y
(Adam/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_7/kernel/m

*Adam/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_7/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_6/bias/m
y
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_6/kernel/m

*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*&
_output_shapes
: *
dtype0
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
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
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	@*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:@*
dtype0

conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:@*
dtype0

conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:@*
dtype0

conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:@*
dtype0

conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0

conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
: *
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
í
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*§
valueB B
Ø
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
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
¨
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
ª
"layer-0
#layer-1
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
È
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*

3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
È
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op*

B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses* 
È
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias
 P_jit_compiled_convolution_op*

Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
È
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias
 __jit_compiled_convolution_op*

`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses* 
È
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op*

o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
È
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op*

~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
®
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
l
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13*
l
00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
å
	iter
 beta_1
¡beta_2

¢decay
£learning_rate0mê1më?mì@míNmîOmï]mð^mñlmòmmó{mô|mõ	mö	m÷0vø1vù?vú@vûNvüOvý]vþ^vÿlvmv{v|v	v	v*

¤serving_default* 

¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses* 

«	variables
¬trainable_variables
­regularization_losses
®	keras_api
¯__call__
+°&call_and_return_all_conditional_losses* 
* 
* 
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
:
¶trace_0
·trace_1
¸trace_2
¹trace_3* 
:
ºtrace_0
»trace_1
¼trace_2
½trace_3* 
®
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses
Ä_random_generator*
®
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses
Ë_random_generator*
* 
* 
* 

Ìnon_trainable_variables
Ílayers
Îmetrics
 Ïlayer_regularization_losses
Ðlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
:
Ñtrace_0
Òtrace_1
Ótrace_2
Ôtrace_3* 
:
Õtrace_0
Ötrace_1
×trace_2
Øtrace_3* 

00
11*

00
11*
* 

Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Þtrace_0* 

ßtrace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

åtrace_0* 

ætrace_0* 

?0
@1*

?0
@1*
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

ìtrace_0* 

ítrace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses* 

ótrace_0* 

ôtrace_0* 

N0
O1*

N0
O1*
* 

õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

útrace_0* 

ûtrace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

]0
^1*

]0
^1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

l0
m1*

l0
m1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

{0
|1*

{0
|1*
* 

non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

¤trace_0* 

¥trace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

«trace_0* 

¬trace_0* 
* 
* 
* 

­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

²trace_0* 

³trace_0* 

0
1*

0
1*
* 

´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

¹trace_0* 

ºtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
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
15*

»0
¼1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses* 

Âtrace_0* 

Ãtrace_0* 
* 
* 
* 

Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
«	variables
¬trainable_variables
­regularization_losses
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses* 

Étrace_0* 

Êtrace_0* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses* 

Ðtrace_0
Ñtrace_1* 

Òtrace_0
Ótrace_1* 

Ô
_generator*
* 
* 
* 

Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses* 

Útrace_0
Ûtrace_1* 

Ütrace_0
Ýtrace_1* 

Þ
_generator*
* 

"0
#1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ß	variables
à	keras_api

átotal

âcount*
M
ã	variables
ä	keras_api

åtotal

æcount
ç
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

è
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

é
_state_var*

á0
â1*

ß	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

å0
æ1*

ã	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUE
StateVar_1Rlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_9/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_9/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_11/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_11/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_9/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_9/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_11/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_11/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

"serving_default_sequential_4_inputPlaceholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ
º
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_4_inputconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_32480
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ø
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp#conv2d_7/kernel/Read/ReadVariableOp!conv2d_7/bias/Read/ReadVariableOp#conv2d_8/kernel/Read/ReadVariableOp!conv2d_8/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp*Adam/conv2d_7/kernel/m/Read/ReadVariableOp(Adam/conv2d_7/bias/m/Read/ReadVariableOp*Adam/conv2d_8/kernel/m/Read/ReadVariableOp(Adam/conv2d_8/bias/m/Read/ReadVariableOp*Adam/conv2d_9/kernel/m/Read/ReadVariableOp(Adam/conv2d_9/bias/m/Read/ReadVariableOp+Adam/conv2d_10/kernel/m/Read/ReadVariableOp)Adam/conv2d_10/bias/m/Read/ReadVariableOp+Adam/conv2d_11/kernel/m/Read/ReadVariableOp)Adam/conv2d_11/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp*Adam/conv2d_7/kernel/v/Read/ReadVariableOp(Adam/conv2d_7/bias/v/Read/ReadVariableOp*Adam/conv2d_8/kernel/v/Read/ReadVariableOp(Adam/conv2d_8/bias/v/Read/ReadVariableOp*Adam/conv2d_9/kernel/v/Read/ReadVariableOp(Adam/conv2d_9/bias/v/Read/ReadVariableOp+Adam/conv2d_10/kernel/v/Read/ReadVariableOp)Adam/conv2d_10/bias/v/Read/ReadVariableOp+Adam/conv2d_11/kernel/v/Read/ReadVariableOp)Adam/conv2d_11/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*B
Tin;
927			*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_34007
¯

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount
StateVar_1StateVarAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/conv2d_7/kernel/mAdam/conv2d_7/bias/mAdam/conv2d_8/kernel/mAdam/conv2d_8/bias/mAdam/conv2d_9/kernel/mAdam/conv2d_9/bias/mAdam/conv2d_10/kernel/mAdam/conv2d_10/bias/mAdam/conv2d_11/kernel/mAdam/conv2d_11/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/conv2d_7/kernel/vAdam/conv2d_7/bias/vAdam/conv2d_8/kernel/vAdam/conv2d_8/bias/vAdam/conv2d_9/kernel/vAdam/conv2d_9/bias/vAdam/conv2d_10/kernel/vAdam/conv2d_10/bias/vAdam/conv2d_11/kernel/vAdam/conv2d_11/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*A
Tin:
826*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_34176¦Æ

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_31867

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_8_layer_call_fn_33357

inputs
identityØ
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
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_31891
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£	
c
G__inference_sequential_4_layer_call_and_return_conditional_losses_32972

inputs
identityg
resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ±
 resizing_2/resize/ResizeBilinearResizeBilinearinputsresizing_2/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(W
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ¢
rescaling_2/mulMul1resizing_2/resize/ResizeBilinear:resized_images:0rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityrescaling_2/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è

,__inference_sequential_5_layer_call_fn_32996

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31826y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_33362

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_11_layer_call_and_return_conditional_losses_33442

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_31879

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
Í
map_while_cond_31661$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_31661___redundant_placeholder0;
7map_while_map_while_cond_31661___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
¿¾
­
G__inference_sequential_5_layer_call_and_return_conditional_losses_33272

inputs-
random_flip_2_map_while_input_6:	H
:random_rotation_2_stateful_uniform_rngreadandskip_resource:	
identity¢random_flip_2/map/while¢1random_rotation_2/stateful_uniform/RngReadAndSkipM
random_flip_2/map/ShapeShapeinputs*
T0*
_output_shapes
:o
%random_flip_2/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_flip_2/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_flip_2/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
random_flip_2/map/strided_sliceStridedSlice random_flip_2/map/Shape:output:0.random_flip_2/map/strided_slice/stack:output:00random_flip_2/map/strided_slice/stack_1:output:00random_flip_2/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-random_flip_2/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿè
random_flip_2/map/TensorArrayV2TensorListReserve6random_flip_2/map/TensorArrayV2/element_shape:output:0(random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Grandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ý
9random_flip_2/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsPrandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒY
random_flip_2/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : z
/random_flip_2/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿì
!random_flip_2/map/TensorArrayV2_1TensorListReserve8random_flip_2/map/TensorArrayV2_1/element_shape:output:0(random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
$random_flip_2/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
random_flip_2/map/whileWhile-random_flip_2/map/while/loop_counter:output:0(random_flip_2/map/strided_slice:output:0 random_flip_2/map/Const:output:0*random_flip_2/map/TensorArrayV2_1:handle:0(random_flip_2/map/strided_slice:output:0Irandom_flip_2/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0random_flip_2_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *.
body&R$
"random_flip_2_map_while_body_33016*.
cond&R$
"random_flip_2_map_while_cond_33015*!
output_shapes
: : : : : : : 
Brandom_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         þ
4random_flip_2/map/TensorArrayV2Stack/TensorListStackTensorListStack random_flip_2/map/while:output:3Krandom_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
random_rotation_2/ShapeShape=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:o
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ|
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿs
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ|
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿs
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿k
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?r
(random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
'random_rotation_2/stateful_uniform/ProdProd1random_rotation_2/stateful_uniform/shape:output:01random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
)random_rotation_2/stateful_uniform/Cast_1Cast0random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: þ
1random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_2_stateful_uniform_rngreadandskip_resource2random_rotation_2/stateful_uniform/Cast/x:output:0-random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:
6random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0random_rotation_2/stateful_uniform/strided_sliceStridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0?random_rotation_2/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask¡
*random_rotation_2/stateful_uniform/BitcastBitcast9random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
8random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ü
2random_rotation_2/stateful_uniform/strided_slice_1StridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:¥
,random_rotation_2/stateful_uniform/Bitcast_1Bitcast;random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :å
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_2/stateful_uniform/shape:output:05random_rotation_2/stateful_uniform/Bitcast_1:output:03random_rotation_2/stateful_uniform/Bitcast:output:0Hrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: Í
&random_rotation_2/stateful_uniform/mulMulDrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
"random_rotation_2/stateful_uniformAddV2*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¡
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ²
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ´
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Å
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¡
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ¶
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ¶
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @É
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:û
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ²
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ù
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ò
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!random_rotation_2/transform/ShapeShape=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:y
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *     
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3=random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR¤
IdentityIdentityKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^random_flip_2/map/while2^random_rotation_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
random_flip_2/map/whilerandom_flip_2/map/while2f
1random_rotation_2/stateful_uniform/RngReadAndSkip1random_rotation_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

)__inference_conv2d_11_layer_call_fn_33431

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_32040w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
«

map_while_body_33539$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢2map/while/stateful_uniform_full_int/RngReadAndSkip¢4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¹
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ã
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskð
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::¢
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_33599*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_33598£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¿
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¿
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:«
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Í
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskû
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ã
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ô
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ô
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_33648*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_33647
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:î
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: ¼
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31927

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

Ê
Msequential_5_random_flip_2_map_while_stateless_random_flip_up_down_true_32747§
¢sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_reversev2_sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyO
Ksequential_5_random_flip_2_map_while_stateless_random_flip_up_down_identity
Qsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
Lsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2¢sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_reversev2_sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyZsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ý
Ksequential_5/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityUsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"£
Ksequential_5_random_flip_2_map_while_stateless_random_flip_up_down_identityTsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
@
Û
G__inference_sequential_7_layer_call_and_return_conditional_losses_32387
sequential_4_input(
conv2d_6_32344: 
conv2d_6_32346: (
conv2d_7_32350: @
conv2d_7_32352:@(
conv2d_8_32356:@@
conv2d_8_32358:@(
conv2d_9_32362:@@
conv2d_9_32364:@)
conv2d_10_32368:@@
conv2d_10_32370:@)
conv2d_11_32374:@@
conv2d_11_32376:@ 
dense_1_32381:	@
dense_1_32383:@
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÕ
sequential_4/PartitionedCallPartitionedCallsequential_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31436è
sequential_5/PartitionedCallPartitionedCall%sequential_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31504
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_5/PartitionedCall:output:0conv2d_6_32344conv2d_6_32346*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31950ð
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_31867
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_32350conv2d_7_32352*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_31968ð
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_31879
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_32356conv2d_8_32358*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_31986ð
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_31891
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_32362conv2d_9_32364*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_32004ð
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_31903
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_32368conv2d_10_32370*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_32022ó
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31915
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_32374conv2d_11_32376*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_32040ó
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31927Ý
flatten_1/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_32053
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_32381dense_1_32383*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32066w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_4_input

g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_33422

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
c
G__inference_sequential_4_layer_call_and_return_conditional_losses_31464

inputs
identityÅ
resizing_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_31423ä
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_31433v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ü
2map_while_stateless_random_flip_up_down_true_31770p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ÿ

#__inference_signature_wrapper_32480
sequential_4_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_31410o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_4_input

h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31501

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_10_layer_call_and_return_conditional_losses_33412

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¿
è
6map_while_stateless_random_flip_left_right_false_33599u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityá
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
¶
K
/__inference_max_pooling2d_7_layer_call_fn_33327

inputs
identityØ
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
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_31879
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
U
,__inference_sequential_5_layer_call_fn_31507
random_flip_2_input
identityÉ
PartitionedCallPartitionedCallrandom_flip_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31504j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_2_input
Â
}
-__inference_random_flip_2_layer_call_fn_33519

inputs
unknown:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_31804y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
I
-__inference_random_flip_2_layer_call_fn_33512

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_31495j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_7_layer_call_and_return_conditional_losses_31968

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
·
Í
map_while_cond_33538$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_33538___redundant_placeholder0;
7map_while_map_while_cond_33538___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
å
Ç
/sequential_5_random_flip_2_map_while_cond_32638Z
Vsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_while_loop_counterU
Qsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice4
0sequential_5_random_flip_2_map_while_placeholder6
2sequential_5_random_flip_2_map_while_placeholder_1Z
Vsequential_5_random_flip_2_map_while_less_sequential_5_random_flip_2_map_strided_sliceq
msequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_while_cond_32638___redundant_placeholder0q
msequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_while_cond_32638___redundant_placeholder11
-sequential_5_random_flip_2_map_while_identity
Ü
)sequential_5/random_flip_2/map/while/LessLess0sequential_5_random_flip_2_map_while_placeholderVsequential_5_random_flip_2_map_while_less_sequential_5_random_flip_2_map_strided_slice*
T0*
_output_shapes
: ÿ
+sequential_5/random_flip_2/map/while/Less_1LessVsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_while_loop_counterQsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice*
T0*
_output_shapes
: µ
/sequential_5/random_flip_2/map/while/LogicalAnd
LogicalAnd/sequential_5/random_flip_2/map/while/Less_1:z:0-sequential_5/random_flip_2/map/while/Less:z:0*
_output_shapes
: 
-sequential_5/random_flip_2/map/while/IdentityIdentity3sequential_5/random_flip_2/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "g
-sequential_5_random_flip_2_map_while_identity6sequential_5/random_flip_2/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
¯
E
)__inference_flatten_1_layer_call_fn_33457

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_32053a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ü
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31950

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
R
,__inference_sequential_4_layer_call_fn_31439
resizing_2_input
identityÆ
PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31436j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_2_input

f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_33392

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
b
F__inference_rescaling_2_layer_call_and_return_conditional_losses_33507

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_31495

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_6_layer_call_and_return_conditional_losses_33292

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
H
,__inference_sequential_4_layer_call_fn_32957

inputs
identity¼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31436j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_32053

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
è

(__inference_conv2d_8_layer_call_fn_33341

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_31986w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@
 
_user_specified_nameinputs
Ð

G__inference_sequential_5_layer_call_and_return_conditional_losses_31826

inputs!
random_flip_2_31819:	%
random_rotation_2_31822:	
identity¢%random_flip_2/StatefulPartitionedCall¢)random_rotation_2/StatefulPartitionedCallñ
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_2_31819*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_31804¥
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_2_31822*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31633
IdentityIdentity2random_rotation_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
a
E__inference_resizing_2_layer_call_and_return_conditional_losses_31423

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

ô
B__inference_dense_1_layer_call_and_return_conditional_losses_32066

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
a
E__inference_resizing_2_layer_call_and_return_conditional_losses_33494

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_9_layer_call_and_return_conditional_losses_32004

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¶
Ö
Qsequential_5_random_flip_2_map_while_stateless_random_flip_left_right_false_32699¬
§sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_identity_sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_5_random_flip_2_map_while_stateless_random_flip_left_right_identity³
Nsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentity§sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_identity_sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"©
Nsequential_5_random_flip_2_map_while_stateless_random_flip_left_right_identityWsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Þ

"random_flip_2_map_while_cond_33015@
<random_flip_2_map_while_random_flip_2_map_while_loop_counter;
7random_flip_2_map_while_random_flip_2_map_strided_slice'
#random_flip_2_map_while_placeholder)
%random_flip_2_map_while_placeholder_1@
<random_flip_2_map_while_less_random_flip_2_map_strided_sliceW
Srandom_flip_2_map_while_random_flip_2_map_while_cond_33015___redundant_placeholder0W
Srandom_flip_2_map_while_random_flip_2_map_while_cond_33015___redundant_placeholder1$
 random_flip_2_map_while_identity
¨
random_flip_2/map/while/LessLess#random_flip_2_map_while_placeholder<random_flip_2_map_while_less_random_flip_2_map_strided_slice*
T0*
_output_shapes
: ¾
random_flip_2/map/while/Less_1Less<random_flip_2_map_while_random_flip_2_map_while_loop_counter7random_flip_2_map_while_random_flip_2_map_strided_slice*
T0*
_output_shapes
: 
"random_flip_2/map/while/LogicalAnd
LogicalAnd"random_flip_2/map/while/Less_1:z:0 random_flip_2/map/while/Less:z:0*
_output_shapes
: u
 random_flip_2/map/while/IdentityIdentity&random_flip_2/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "M
 random_flip_2_map_while_identity)random_flip_2/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ý
Å
,__inference_sequential_7_layer_call_fn_32550

inputs
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	@

unknown_14:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_32267o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

1__inference_random_rotation_2_layer_call_fn_33693

inputs
unknown:	
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31633y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Å
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31633

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ø
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ¡
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
è
6map_while_stateless_random_flip_left_right_false_31722u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityá
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ç
F
*__inference_resizing_2_layer_call_fn_33488

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_31423j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_33463

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
É
G
+__inference_rescaling_2_layer_call_fn_33499

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_31433j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
S

G__inference_sequential_7_layer_call_and_return_conditional_losses_32617

inputsA
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@A
'conv2d_8_conv2d_readvariableop_resource:@@6
(conv2d_8_biasadd_readvariableop_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@6
(conv2d_9_biasadd_readvariableop_resource:@B
(conv2d_10_conv2d_readvariableop_resource:@@7
)conv2d_10_biasadd_readvariableop_resource:@B
(conv2d_11_conv2d_readvariableop_resource:@@7
)conv2d_11_biasadd_readvariableop_resource:@9
&dense_1_matmul_readvariableop_resource:	@5
'dense_1_biasadd_readvariableop_resource:@
identity¢ conv2d_10/BiasAdd/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢ conv2d_11/BiasAdd/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/BiasAdd/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/BiasAdd/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/BiasAdd/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpt
#sequential_4/resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ë
-sequential_4/resizing_2/resize/ResizeBilinearResizeBilinearinputs,sequential_4/resizing_2/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(d
sequential_4/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;f
!sequential_4/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    É
sequential_4/rescaling_2/mulMul>sequential_4/resizing_2/resize/ResizeBilinear:resized_images:0(sequential_4/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
sequential_4/rescaling_2/addAddV2 sequential_4/rescaling_2/mul:z:0*sequential_4/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0È
conv2d_6/Conv2DConv2D sequential_4/rescaling_2/add:z:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ ¬
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides

conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Æ
conv2d_7/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@¬
max_pooling2d_7/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides

conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Æ
conv2d_8/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@¬
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Æ
conv2d_9/Conv2DConv2D max_pooling2d_8/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0È
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0É
conv2d_11/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_1/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
û

/sequential_5_random_flip_2_map_while_body_32639Z
Vsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_while_loop_counterU
Qsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice4
0sequential_5_random_flip_2_map_while_placeholder6
2sequential_5_random_flip_2_map_while_placeholder_1Y
Usequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice_1_0
sequential_5_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_5_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0f
Xsequential_5_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	1
-sequential_5_random_flip_2_map_while_identity3
/sequential_5_random_flip_2_map_while_identity_13
/sequential_5_random_flip_2_map_while_identity_23
/sequential_5_random_flip_2_map_while_identity_3W
Ssequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice_1
sequential_5_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_5_random_flip_2_map_tensorarrayunstack_tensorlistfromtensord
Vsequential_5_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢Msequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip¢Osequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip«
Vsequential_5/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ¿
Hsequential_5/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_5_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_5_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_00sequential_5_random_flip_2_map_while_placeholder_sequential_5/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
Dsequential_5/random_flip_2/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Dsequential_5/random_flip_2/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Csequential_5/random_flip_2/map/while/stateful_uniform_full_int/ProdProdMsequential_5/random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Msequential_5/random_flip_2/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
Esequential_5/random_flip_2/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ë
Esequential_5/random_flip_2/map/while/stateful_uniform_full_int/Cast_1CastLsequential_5/random_flip_2/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ð
Msequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipXsequential_5_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Nsequential_5/random_flip_2/map/while/stateful_uniform_full_int/Cast/x:output:0Isequential_5/random_flip_2/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Rsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Tsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Tsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Lsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_sliceStridedSliceUsequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0[sequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack:output:0]sequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0]sequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÙ
Fsequential_5/random_flip_2/map/while/stateful_uniform_full_int/BitcastBitcastUsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Tsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Nsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceUsequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0_sequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0_sequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ý
Hsequential_5/random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1BitcastWsequential_5/random_flip_2/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Bsequential_5/random_flip_2/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ê
>sequential_5/random_flip_2/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Msequential_5/random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Qsequential_5/random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1:output:0Osequential_5/random_flip_2/map/while/stateful_uniform_full_int/Bitcast:output:0Ksequential_5/random_flip_2/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	y
/sequential_5/random_flip_2/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ç
*sequential_5/random_flip_2/map/while/stackPackGsequential_5/random_flip_2/map/while/stateful_uniform_full_int:output:08sequential_5/random_flip_2/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:
8sequential_5/random_flip_2/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
:sequential_5/random_flip_2/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
:sequential_5/random_flip_2/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
2sequential_5/random_flip_2/map/while/strided_sliceStridedSlice3sequential_5/random_flip_2/map/while/stack:output:0Asequential_5/random_flip_2/map/while/strided_slice/stack:output:0Csequential_5/random_flip_2/map/while/strided_slice/stack_1:output:0Csequential_5/random_flip_2/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskÁ
Xsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/control_dependencyIdentityOsequential_5/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*[
_classQ
OMloc:@sequential_5/random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:§
dsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB §
bsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    §
bsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ú
{sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter;sequential_5/random_flip_2/map/while/strided_slice:output:0* 
_output_shapes
::½
{sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :­
wsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2msequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ä
bsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubksequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0ksequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: õ
bsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0fsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ý
^sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2fsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0ksequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Lsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?®
Jsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/LessLessbsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Usequential_5/random_flip_2/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
Esequential_5/random_flip_2/map/while/stateless_random_flip_left_rightStatelessIfNsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/Less:z:0asequential_5/random_flip_2/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *d
else_branchURS
Qsequential_5_random_flip_2_map_while_stateless_random_flip_left_right_false_32699*#
output_shapes
:*c
then_branchTRR
Psequential_5_random_flip_2_map_while_stateless_random_flip_left_right_true_32698Ù
Nsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityNsequential_5/random_flip_2/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
Fsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
Fsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Esequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/ProdProdOsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Osequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
Gsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ï
Gsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1CastNsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Æ
Osequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipXsequential_5_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Psequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Cast/x:output:0Ksequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1:y:0N^sequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Tsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:  
Vsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Vsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Nsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceWsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0]sequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0_sequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0_sequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÝ
Hsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/BitcastBitcastWsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0 
Vsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:¢
Xsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¢
Xsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Psequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceWsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0_sequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0asequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0asequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:á
Jsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastYsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Dsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ô
@sequential_5/random_flip_2/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Osequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Ssequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Qsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast:output:0Msequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	{
1sequential_5/random_flip_2/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R í
,sequential_5/random_flip_2/map/while/stack_1PackIsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1:output:0:sequential_5/random_flip_2/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
:sequential_5/random_flip_2/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
<sequential_5/random_flip_2/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
<sequential_5/random_flip_2/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      º
4sequential_5/random_flip_2/map/while/strided_slice_1StridedSlice5sequential_5/random_flip_2/map/while/stack_1:output:0Csequential_5/random_flip_2/map/while/strided_slice_1/stack:output:0Esequential_5/random_flip_2/map/while/strided_slice_1/stack_1:output:0Esequential_5/random_flip_2/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskÌ
Usequential_5/random_flip_2/map/while/stateless_random_flip_up_down/control_dependencyIdentityWsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*a
_classW
USloc:@sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:¤
asequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB ¤
_sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ¤
_sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ù
xsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter=sequential_5/random_flip_2/map/while/strided_slice_1:output:0* 
_output_shapes
::º
xsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
tsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2jsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0~sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: Û
_sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubhsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0hsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ë
_sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMul}sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0csequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ô
[sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2csequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0hsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Isequential_5/random_flip_2/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¥
Gsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/LessLess_sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Rsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: û
Bsequential_5/random_flip_2/map/while/stateless_random_flip_up_downStatelessIfKsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/Less:z:0^sequential_5/random_flip_2/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *a
else_branchRRP
Nsequential_5_random_flip_2_map_while_stateless_random_flip_up_down_false_32748*#
output_shapes
:*`
then_branchQRO
Msequential_5_random_flip_2_map_while_stateless_random_flip_up_down_true_32747Ó
Ksequential_5/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityKsequential_5/random_flip_2/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:Ú
Isequential_5/random_flip_2/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2sequential_5_random_flip_2_map_while_placeholder_10sequential_5_random_flip_2_map_while_placeholderTsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒl
*sequential_5/random_flip_2/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¹
(sequential_5/random_flip_2/map/while/addAddV20sequential_5_random_flip_2_map_while_placeholder3sequential_5/random_flip_2/map/while/add/y:output:0*
T0*
_output_shapes
: n
,sequential_5/random_flip_2/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ã
*sequential_5/random_flip_2/map/while/add_1AddV2Vsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_while_loop_counter5sequential_5/random_flip_2/map/while/add_1/y:output:0*
T0*
_output_shapes
: ¶
-sequential_5/random_flip_2/map/while/IdentityIdentity.sequential_5/random_flip_2/map/while/add_1:z:0*^sequential_5/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: Û
/sequential_5/random_flip_2/map/while/Identity_1IdentityQsequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice*^sequential_5/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: ¶
/sequential_5/random_flip_2/map/while/Identity_2Identity,sequential_5/random_flip_2/map/while/add:z:0*^sequential_5/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: ã
/sequential_5/random_flip_2/map/while/Identity_3IdentityYsequential_5/random_flip_2/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^sequential_5/random_flip_2/map/while/NoOp*
T0*
_output_shapes
: 
)sequential_5/random_flip_2/map/while/NoOpNoOpN^sequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipP^sequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "g
-sequential_5_random_flip_2_map_while_identity6sequential_5/random_flip_2/map/while/Identity:output:0"k
/sequential_5_random_flip_2_map_while_identity_18sequential_5/random_flip_2/map/while/Identity_1:output:0"k
/sequential_5_random_flip_2_map_while_identity_28sequential_5/random_flip_2/map/while/Identity_2:output:0"k
/sequential_5_random_flip_2_map_while_identity_38sequential_5/random_flip_2/map/while/Identity_3:output:0"¬
Ssequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice_1Usequential_5_random_flip_2_map_while_sequential_5_random_flip_2_map_strided_slice_1_0"²
Vsequential_5_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resourceXsequential_5_random_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¦
sequential_5_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_5_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorsequential_5_random_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_sequential_5_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
Msequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipMsequential_5/random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip2¢
Osequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipOsequential_5/random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Á
¢
Drandom_flip_2_map_while_stateless_random_flip_left_right_false_33076
random_flip_2_map_while_stateless_random_flip_left_right_identity_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_2_map_while_stateless_random_flip_left_right_identity
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityrandom_flip_2_map_while_stateless_random_flip_left_right_identity_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:"
Arandom_flip_2_map_while_stateless_random_flip_left_right_identityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ý
D__inference_conv2d_11_layer_call_and_return_conditional_losses_32040

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

¢
,__inference_sequential_5_layer_call_fn_31842
random_flip_2_input
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31826y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_2_input
¤
Ü
3map_while_stateless_random_flip_up_down_false_31771o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityØ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

ü
C__inference_conv2d_8_layer_call_and_return_conditional_losses_33352

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@
 
_user_specified_nameinputs
ð

(__inference_conv2d_6_layer_call_fn_33281

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31950y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù¯
Ì
"random_flip_2_map_while_body_33016@
<random_flip_2_map_while_random_flip_2_map_while_loop_counter;
7random_flip_2_map_while_random_flip_2_map_strided_slice'
#random_flip_2_map_while_placeholder)
%random_flip_2_map_while_placeholder_1?
;random_flip_2_map_while_random_flip_2_map_strided_slice_1_0{
wrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0Y
Krandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	$
 random_flip_2_map_while_identity&
"random_flip_2_map_while_identity_1&
"random_flip_2_map_while_identity_2&
"random_flip_2_map_while_identity_3=
9random_flip_2_map_while_random_flip_2_map_strided_slice_1y
urandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorW
Irandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip¢Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip
Irandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ý
;random_flip_2/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0#random_flip_2_map_while_placeholderRrandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0
7random_flip_2/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
7random_flip_2/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ã
6random_flip_2/map/while/stateful_uniform_full_int/ProdProd@random_flip_2/map/while/stateful_uniform_full_int/shape:output:0@random_flip_2/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: z
8random_flip_2/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :±
8random_flip_2/map/while/stateful_uniform_full_int/Cast_1Cast?random_flip_2/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¼
@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Arandom_flip_2/map/while/stateful_uniform_full_int/Cast/x:output:0<random_flip_2/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Erandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
?random_flip_2/map/while/stateful_uniform_full_int/strided_sliceStridedSliceHrandom_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Nrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask¿
9random_flip_2/map/while/stateful_uniform_full_int/BitcastBitcastHrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Grandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
Arandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceHrandom_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Prandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ã
;random_flip_2/map/while/stateful_uniform_full_int/Bitcast_1BitcastJrandom_flip_2/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0w
5random_flip_2/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
1random_flip_2/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2@random_flip_2/map/while/stateful_uniform_full_int/shape:output:0Drandom_flip_2/map/while/stateful_uniform_full_int/Bitcast_1:output:0Brandom_flip_2/map/while/stateful_uniform_full_int/Bitcast:output:0>random_flip_2/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	l
"random_flip_2/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R À
random_flip_2/map/while/stackPack:random_flip_2/map/while/stateful_uniform_full_int:output:0+random_flip_2/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:|
+random_flip_2/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-random_flip_2/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-random_flip_2/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ï
%random_flip_2/map/while/strided_sliceStridedSlice&random_flip_2/map/while/stack:output:04random_flip_2/map/while/strided_slice/stack:output:06random_flip_2/map/while/strided_slice/stack_1:output:06random_flip_2/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
Krandom_flip_2/map/while/stateless_random_flip_left_right/control_dependencyIdentityBrandom_flip_2/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*N
_classD
B@loc:@random_flip_2/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Wrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?à
nrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.random_flip_2/map/while/strided_slice:output:0* 
_output_shapes
::°
nrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :é
jrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0trandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ½
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Í
Urandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Yrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ¶
Qrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Yrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0^random_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
?random_flip_2/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
=random_flip_2/map/while/stateless_random_flip_left_right/LessLessUrandom_flip_2/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Hrandom_flip_2/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: É
8random_flip_2/map/while/stateless_random_flip_left_rightStatelessIfArandom_flip_2/map/while/stateless_random_flip_left_right/Less:z:0Trandom_flip_2/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *W
else_branchHRF
Drandom_flip_2_map_while_stateless_random_flip_left_right_false_33076*#
output_shapes
:*V
then_branchGRE
Crandom_flip_2_map_while_stateless_random_flip_left_right_true_33075¿
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityArandom_flip_2/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:
9random_flip_2/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
9random_flip_2/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: é
8random_flip_2/map/while/stateful_uniform_full_int_1/ProdProdBrandom_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Brandom_flip_2/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: |
:random_flip_2/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :µ
:random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1CastArandom_flip_2/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Crandom_flip_2/map/while/stateful_uniform_full_int_1/Cast/x:output:0>random_flip_2/map/while/stateful_uniform_full_int_1/Cast_1:y:0A^random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Grandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
Arandom_flip_2/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceJrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Prandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÃ
;random_flip_2/map/while/stateful_uniform_full_int_1/BitcastBitcastJrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Irandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Krandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Krandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
Crandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceJrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Rrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Trandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Trandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ç
=random_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastLrandom_flip_2/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0y
7random_flip_2/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
3random_flip_2/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Brandom_flip_2/map/while/stateful_uniform_full_int_1/shape:output:0Frandom_flip_2/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Drandom_flip_2/map/while/stateful_uniform_full_int_1/Bitcast:output:0@random_flip_2/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	n
$random_flip_2/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Æ
random_flip_2/map/while/stack_1Pack<random_flip_2/map/while/stateful_uniform_full_int_1:output:0-random_flip_2/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:~
-random_flip_2/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
/random_flip_2/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
/random_flip_2/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
'random_flip_2/map/while/strided_slice_1StridedSlice(random_flip_2/map/while/stack_1:output:06random_flip_2/map/while/strided_slice_1/stack:output:08random_flip_2/map/while/strided_slice_1/stack_1:output:08random_flip_2/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask¥
Hrandom_flip_2/map/while/stateless_random_flip_up_down/control_dependencyIdentityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*T
_classJ
HFloc:@random_flip_2/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Trandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ß
krandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0random_flip_2/map/while/strided_slice_1:output:0* 
_output_shapes
::­
krandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ú
grandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2]random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0qrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0urandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0trandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ´
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ä
Rrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulprandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Vrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ­
Nrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Vrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0[random_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
<random_flip_2/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?þ
:random_flip_2/map/while/stateless_random_flip_up_down/LessLessRrandom_flip_2/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Erandom_flip_2/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: º
5random_flip_2/map/while/stateless_random_flip_up_downStatelessIf>random_flip_2/map/while/stateless_random_flip_up_down/Less:z:0Qrandom_flip_2/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *T
else_branchERC
Arandom_flip_2_map_while_stateless_random_flip_up_down_false_33125*#
output_shapes
:*S
then_branchDRB
@random_flip_2_map_while_stateless_random_flip_up_down_true_33124¹
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentity>random_flip_2/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:¦
<random_flip_2/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%random_flip_2_map_while_placeholder_1#random_flip_2_map_while_placeholderGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒ_
random_flip_2/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
random_flip_2/map/while/addAddV2#random_flip_2_map_while_placeholder&random_flip_2/map/while/add/y:output:0*
T0*
_output_shapes
: a
random_flip_2/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¯
random_flip_2/map/while/add_1AddV2<random_flip_2_map_while_random_flip_2_map_while_loop_counter(random_flip_2/map/while/add_1/y:output:0*
T0*
_output_shapes
: 
 random_flip_2/map/while/IdentityIdentity!random_flip_2/map/while/add_1:z:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: §
"random_flip_2/map/while/Identity_1Identity7random_flip_2_map_while_random_flip_2_map_strided_slice^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: 
"random_flip_2/map/while/Identity_2Identityrandom_flip_2/map/while/add:z:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: ¼
"random_flip_2/map/while/Identity_3IdentityLrandom_flip_2/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_2/map/while/NoOp*
T0*
_output_shapes
: æ
random_flip_2/map/while/NoOpNoOpA^random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkipC^random_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "M
 random_flip_2_map_while_identity)random_flip_2/map/while/Identity:output:0"Q
"random_flip_2_map_while_identity_1+random_flip_2/map/while/Identity_1:output:0"Q
"random_flip_2_map_while_identity_2+random_flip_2/map/while/Identity_2:output:0"Q
"random_flip_2_map_while_identity_3+random_flip_2/map/while/Identity_3:output:0"x
9random_flip_2_map_while_random_flip_2_map_strided_slice_1;random_flip_2_map_while_random_flip_2_map_strided_slice_1_0"
Irandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resourceKrandom_flip_2_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"ð
urandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensorwrandom_flip_2_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_2_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2
@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip@random_flip_2/map/while/stateful_uniform_full_int/RngReadAndSkip2
Brandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkipBrandom_flip_2/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ü
C__inference_conv2d_7_layer_call_and_return_conditional_losses_33322

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¼
è
5map_while_stateless_random_flip_left_right_true_33598v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
÷

G__inference_sequential_5_layer_call_and_return_conditional_losses_31858
random_flip_2_input!
random_flip_2_31851:	%
random_rotation_2_31854:	
identity¢%random_flip_2/StatefulPartitionedCall¢)random_rotation_2/StatefulPartitionedCallþ
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputrandom_flip_2_31851*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_31804¥
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_2_31854*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31633
IdentityIdentity2random_rotation_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_2_input


,__inference_sequential_7_layer_call_fn_32513

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_32073o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á

'__inference_dense_1_layer_call_fn_33472

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCall×
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
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32066o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

ô
B__inference_dense_1_layer_call_and_return_conditional_losses_33483

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_33523

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33697

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
m
G__inference_sequential_4_layer_call_and_return_conditional_losses_31484
resizing_2_input
identityÏ
resizing_2/PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_31423ä
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_31433v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_2_input

Ö
Psequential_5_random_flip_2_map_while_stateless_random_flip_left_right_true_32698­
¨sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_reversev2_sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_5_random_flip_2_map_while_stateless_random_flip_left_right_identity
Tsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
Osequential_5/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2¨sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_reversev2_sequential_5_random_flip_2_map_while_stateless_random_flip_left_right_control_dependency]sequential_5/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ã
Nsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityXsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"©
Nsequential_5_random_flip_2_map_while_stateless_random_flip_left_right_identityWsequential_5/random_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
é
R
,__inference_sequential_4_layer_call_fn_31472
resizing_2_input
identityÆ
PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31464j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_2_input
£	
c
G__inference_sequential_4_layer_call_and_return_conditional_losses_32982

inputs
identityg
resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ±
 resizing_2/resize/ResizeBilinearResizeBilinearinputsresizing_2/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(W
rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ¢
rescaling_2/mulMul1resizing_2/resize/ResizeBilinear:resized_images:0rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rescaling_2/addAddV2rescaling_2/mul:z:0rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityrescaling_2/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ü
C__inference_conv2d_9_layer_call_and_return_conditional_losses_33382

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31915

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ü
2map_while_stateless_random_flip_up_down_true_33647p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:§
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Éj
»
__inference__traced_save_34007
file_prefix.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop.
*savev2_conv2d_7_kernel_read_readvariableop,
(savev2_conv2d_7_bias_read_readvariableop.
*savev2_conv2d_8_kernel_read_readvariableop,
(savev2_conv2d_8_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop5
1savev2_adam_conv2d_7_kernel_m_read_readvariableop3
/savev2_adam_conv2d_7_bias_m_read_readvariableop5
1savev2_adam_conv2d_8_kernel_m_read_readvariableop3
/savev2_adam_conv2d_8_bias_m_read_readvariableop5
1savev2_adam_conv2d_9_kernel_m_read_readvariableop3
/savev2_adam_conv2d_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_10_kernel_m_read_readvariableop4
0savev2_adam_conv2d_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_11_kernel_m_read_readvariableop4
0savev2_adam_conv2d_11_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop5
1savev2_adam_conv2d_7_kernel_v_read_readvariableop3
/savev2_adam_conv2d_7_bias_v_read_readvariableop5
1savev2_adam_conv2d_8_kernel_v_read_readvariableop3
/savev2_adam_conv2d_8_bias_v_read_readvariableop5
1savev2_adam_conv2d_9_kernel_v_read_readvariableop3
/savev2_adam_conv2d_9_bias_v_read_readvariableop6
2savev2_adam_conv2d_10_kernel_v_read_readvariableop4
0savev2_adam_conv2d_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_11_kernel_v_read_readvariableop4
0savev2_adam_conv2d_11_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*®
value¤B¡6B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÙ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B á
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop*savev2_conv2d_7_kernel_read_readvariableop(savev2_conv2d_7_bias_read_readvariableop*savev2_conv2d_8_kernel_read_readvariableop(savev2_conv2d_8_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop1savev2_adam_conv2d_7_kernel_m_read_readvariableop/savev2_adam_conv2d_7_bias_m_read_readvariableop1savev2_adam_conv2d_8_kernel_m_read_readvariableop/savev2_adam_conv2d_8_bias_m_read_readvariableop1savev2_adam_conv2d_9_kernel_m_read_readvariableop/savev2_adam_conv2d_9_bias_m_read_readvariableop2savev2_adam_conv2d_10_kernel_m_read_readvariableop0savev2_adam_conv2d_10_bias_m_read_readvariableop2savev2_adam_conv2d_11_kernel_m_read_readvariableop0savev2_adam_conv2d_11_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop1savev2_adam_conv2d_7_kernel_v_read_readvariableop/savev2_adam_conv2d_7_bias_v_read_readvariableop1savev2_adam_conv2d_8_kernel_v_read_readvariableop/savev2_adam_conv2d_8_bias_v_read_readvariableop1savev2_adam_conv2d_9_kernel_v_read_readvariableop/savev2_adam_conv2d_9_bias_v_read_readvariableop2savev2_adam_conv2d_10_kernel_v_read_readvariableop0savev2_adam_conv2d_10_bias_v_read_readvariableop2savev2_adam_conv2d_11_kernel_v_read_readvariableop0savev2_adam_conv2d_11_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *D
dtypes:
826			
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapes
: : : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@: : : : : : : : : ::: : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@: : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:%&!

_output_shapes
:	@: '

_output_shapes
:@:,((
&
_output_shapes
: : )

_output_shapes
: :,*(
&
_output_shapes
: @: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:,.(
&
_output_shapes
:@@: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:%4!

_output_shapes
:	@: 5

_output_shapes
:@:6

_output_shapes
: 
¼
è
5map_while_stateless_random_flip_left_right_true_31721v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¨
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:­
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:

c
G__inference_sequential_5_layer_call_and_return_conditional_losses_33000

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_9_layer_call_fn_33387

inputs
identityØ
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
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_31903
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_31903

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_33332

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
c
G__inference_sequential_4_layer_call_and_return_conditional_losses_31436

inputs
identityÅ
resizing_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_31423ä
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_31433v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï	

@random_flip_2_map_while_stateless_random_flip_up_down_true_33124
random_flip_2_map_while_stateless_random_flip_up_down_reversev2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_2_map_while_stateless_random_flip_up_down_identity
Drandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Õ
?random_flip_2/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2random_flip_2_map_while_stateless_random_flip_up_down_reversev2_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyMrandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:Ã
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityHrandom_flip_2/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:"
>random_flip_2_map_while_stateless_random_flip_up_down_identityGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
ê

)__inference_conv2d_10_layer_call_fn_33401

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_32022w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ê
Nsequential_5_random_flip_2_map_while_stateless_random_flip_up_down_false_32748¦
¡sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_identity_sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyO
Ksequential_5_random_flip_2_map_while_stateless_random_flip_up_down_identityª
Ksequential_5/random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentity¡sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_identity_sequential_5_random_flip_2_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"£
Ksequential_5_random_flip_2_map_while_stateless_random_flip_up_down_identityTsequential_5/random_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
B
º
G__inference_sequential_7_layer_call_and_return_conditional_losses_32267

inputs 
sequential_5_32219:	 
sequential_5_32221:	(
conv2d_6_32224: 
conv2d_6_32226: (
conv2d_7_32230: @
conv2d_7_32232:@(
conv2d_8_32236:@@
conv2d_8_32238:@(
conv2d_9_32242:@@
conv2d_9_32244:@)
conv2d_10_32248:@@
conv2d_10_32250:@)
conv2d_11_32254:@@
conv2d_11_32256:@ 
dense_1_32261:	@
dense_1_32263:@
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢$sequential_5/StatefulPartitionedCallÉ
sequential_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31464¢
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0sequential_5_32219sequential_5_32221*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31826
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0conv2d_6_32224conv2d_6_32226*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31950ð
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_31867
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_32230conv2d_7_32232*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_31968ð
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_31879
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_32236conv2d_8_32238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_31986ð
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_31891
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_32242conv2d_9_32244*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_32004ð
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_31903
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_32248conv2d_10_32250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_32022ó
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31915
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_32254conv2d_11_32256*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_32040ó
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31927Ý
flatten_1/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_32053
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_32261dense_1_32263*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32066w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ã
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä«

G__inference_sequential_7_layer_call_and_return_conditional_losses_32952

inputs:
,sequential_5_random_flip_2_map_while_input_6:	U
Gsequential_5_random_rotation_2_stateful_uniform_rngreadandskip_resource:	A
'conv2d_6_conv2d_readvariableop_resource: 6
(conv2d_6_biasadd_readvariableop_resource: A
'conv2d_7_conv2d_readvariableop_resource: @6
(conv2d_7_biasadd_readvariableop_resource:@A
'conv2d_8_conv2d_readvariableop_resource:@@6
(conv2d_8_biasadd_readvariableop_resource:@A
'conv2d_9_conv2d_readvariableop_resource:@@6
(conv2d_9_biasadd_readvariableop_resource:@B
(conv2d_10_conv2d_readvariableop_resource:@@7
)conv2d_10_biasadd_readvariableop_resource:@B
(conv2d_11_conv2d_readvariableop_resource:@@7
)conv2d_11_biasadd_readvariableop_resource:@9
&dense_1_matmul_readvariableop_resource:	@5
'dense_1_biasadd_readvariableop_resource:@
identity¢ conv2d_10/BiasAdd/ReadVariableOp¢conv2d_10/Conv2D/ReadVariableOp¢ conv2d_11/BiasAdd/ReadVariableOp¢conv2d_11/Conv2D/ReadVariableOp¢conv2d_6/BiasAdd/ReadVariableOp¢conv2d_6/Conv2D/ReadVariableOp¢conv2d_7/BiasAdd/ReadVariableOp¢conv2d_7/Conv2D/ReadVariableOp¢conv2d_8/BiasAdd/ReadVariableOp¢conv2d_8/Conv2D/ReadVariableOp¢conv2d_9/BiasAdd/ReadVariableOp¢conv2d_9/Conv2D/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢$sequential_5/random_flip_2/map/while¢>sequential_5/random_rotation_2/stateful_uniform/RngReadAndSkipt
#sequential_4/resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ë
-sequential_4/resizing_2/resize/ResizeBilinearResizeBilinearinputs,sequential_4/resizing_2/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(d
sequential_4/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;f
!sequential_4/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    É
sequential_4/rescaling_2/mulMul>sequential_4/resizing_2/resize/ResizeBilinear:resized_images:0(sequential_4/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
sequential_4/rescaling_2/addAddV2 sequential_4/rescaling_2/mul:z:0*sequential_4/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
$sequential_5/random_flip_2/map/ShapeShape sequential_4/rescaling_2/add:z:0*
T0*
_output_shapes
:|
2sequential_5/random_flip_2/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_5/random_flip_2/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_5/random_flip_2/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,sequential_5/random_flip_2/map/strided_sliceStridedSlice-sequential_5/random_flip_2/map/Shape:output:0;sequential_5/random_flip_2/map/strided_slice/stack:output:0=sequential_5/random_flip_2/map/strided_slice/stack_1:output:0=sequential_5/random_flip_2/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
:sequential_5/random_flip_2/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
,sequential_5/random_flip_2/map/TensorArrayV2TensorListReserveCsequential_5/random_flip_2/map/TensorArrayV2/element_shape:output:05sequential_5/random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ©
Tsequential_5/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ±
Fsequential_5/random_flip_2/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_4/rescaling_2/add:z:0]sequential_5/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
$sequential_5/random_flip_2/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
<sequential_5/random_flip_2/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
.sequential_5/random_flip_2/map/TensorArrayV2_1TensorListReserveEsequential_5/random_flip_2/map/TensorArrayV2_1/element_shape:output:05sequential_5/random_flip_2/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
1sequential_5/random_flip_2/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
$sequential_5/random_flip_2/map/whileWhile:sequential_5/random_flip_2/map/while/loop_counter:output:05sequential_5/random_flip_2/map/strided_slice:output:0-sequential_5/random_flip_2/map/Const:output:07sequential_5/random_flip_2/map/TensorArrayV2_1:handle:05sequential_5/random_flip_2/map/strided_slice:output:0Vsequential_5/random_flip_2/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0,sequential_5_random_flip_2_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *;
body3R1
/sequential_5_random_flip_2_map_while_body_32639*;
cond3R1
/sequential_5_random_flip_2_map_while_cond_32638*!
output_shapes
: : : : : : : ¤
Osequential_5/random_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ¥
Asequential_5/random_flip_2/map/TensorArrayV2Stack/TensorListStackTensorListStack-sequential_5/random_flip_2/map/while:output:3Xsequential_5/random_flip_2/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
$sequential_5/random_rotation_2/ShapeShapeJsequential_5/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:|
2sequential_5/random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_5/random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_5/random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
,sequential_5/random_rotation_2/strided_sliceStridedSlice-sequential_5/random_rotation_2/Shape:output:0;sequential_5/random_rotation_2/strided_slice/stack:output:0=sequential_5/random_rotation_2/strided_slice/stack_1:output:0=sequential_5/random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4sequential_5/random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
6sequential_5/random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
6sequential_5/random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
.sequential_5/random_rotation_2/strided_slice_1StridedSlice-sequential_5/random_rotation_2/Shape:output:0=sequential_5/random_rotation_2/strided_slice_1/stack:output:0?sequential_5/random_rotation_2/strided_slice_1/stack_1:output:0?sequential_5/random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
#sequential_5/random_rotation_2/CastCast7sequential_5/random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
4sequential_5/random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
6sequential_5/random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
6sequential_5/random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
.sequential_5/random_rotation_2/strided_slice_2StridedSlice-sequential_5/random_rotation_2/Shape:output:0=sequential_5/random_rotation_2/strided_slice_2/stack:output:0?sequential_5/random_rotation_2/strided_slice_2/stack_1:output:0?sequential_5/random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
%sequential_5/random_rotation_2/Cast_1Cast7sequential_5/random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ¢
5sequential_5/random_rotation_2/stateful_uniform/shapePack5sequential_5/random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:x
3sequential_5/random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿x
3sequential_5/random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?
5sequential_5/random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ý
4sequential_5/random_rotation_2/stateful_uniform/ProdProd>sequential_5/random_rotation_2/stateful_uniform/shape:output:0>sequential_5/random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: x
6sequential_5/random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :­
6sequential_5/random_rotation_2/stateful_uniform/Cast_1Cast=sequential_5/random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ²
>sequential_5/random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkipGsequential_5_random_rotation_2_stateful_uniform_rngreadandskip_resource?sequential_5/random_rotation_2/stateful_uniform/Cast/x:output:0:sequential_5/random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Csequential_5/random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Esequential_5/random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Esequential_5/random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
=sequential_5/random_rotation_2/stateful_uniform/strided_sliceStridedSliceFsequential_5/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Lsequential_5/random_rotation_2/stateful_uniform/strided_slice/stack:output:0Nsequential_5/random_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Nsequential_5/random_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask»
7sequential_5/random_rotation_2/stateful_uniform/BitcastBitcastFsequential_5/random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Esequential_5/random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Gsequential_5/random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Gsequential_5/random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
?sequential_5/random_rotation_2/stateful_uniform/strided_slice_1StridedSliceFsequential_5/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Nsequential_5/random_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Psequential_5/random_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Psequential_5/random_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:¿
9sequential_5/random_rotation_2/stateful_uniform/Bitcast_1BitcastHsequential_5/random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Lsequential_5/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :¦
Hsequential_5/random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2>sequential_5/random_rotation_2/stateful_uniform/shape:output:0Bsequential_5/random_rotation_2/stateful_uniform/Bitcast_1:output:0@sequential_5/random_rotation_2/stateful_uniform/Bitcast:output:0Usequential_5/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
3sequential_5/random_rotation_2/stateful_uniform/subSub<sequential_5/random_rotation_2/stateful_uniform/max:output:0<sequential_5/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: ô
3sequential_5/random_rotation_2/stateful_uniform/mulMulQsequential_5/random_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:07sequential_5/random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
/sequential_5/random_rotation_2/stateful_uniformAddV27sequential_5/random_rotation_2/stateful_uniform/mul:z:0<sequential_5/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
4sequential_5/random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
2sequential_5/random_rotation_2/rotation_matrix/subSub)sequential_5/random_rotation_2/Cast_1:y:0=sequential_5/random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
2sequential_5/random_rotation_2/rotation_matrix/CosCos3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
6sequential_5/random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
4sequential_5/random_rotation_2/rotation_matrix/sub_1Sub)sequential_5/random_rotation_2/Cast_1:y:0?sequential_5/random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: Ù
2sequential_5/random_rotation_2/rotation_matrix/mulMul6sequential_5/random_rotation_2/rotation_matrix/Cos:y:08sequential_5/random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2sequential_5/random_rotation_2/rotation_matrix/SinSin3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
6sequential_5/random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Æ
4sequential_5/random_rotation_2/rotation_matrix/sub_2Sub'sequential_5/random_rotation_2/Cast:y:0?sequential_5/random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: Û
4sequential_5/random_rotation_2/rotation_matrix/mul_1Mul6sequential_5/random_rotation_2/rotation_matrix/Sin:y:08sequential_5/random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÛ
4sequential_5/random_rotation_2/rotation_matrix/sub_3Sub6sequential_5/random_rotation_2/rotation_matrix/mul:z:08sequential_5/random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÛ
4sequential_5/random_rotation_2/rotation_matrix/sub_4Sub6sequential_5/random_rotation_2/rotation_matrix/sub:z:08sequential_5/random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
8sequential_5/random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ì
6sequential_5/random_rotation_2/rotation_matrix/truedivRealDiv8sequential_5/random_rotation_2/rotation_matrix/sub_4:z:0Asequential_5/random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
6sequential_5/random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Æ
4sequential_5/random_rotation_2/rotation_matrix/sub_5Sub'sequential_5/random_rotation_2/Cast:y:0?sequential_5/random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
4sequential_5/random_rotation_2/rotation_matrix/Sin_1Sin3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
6sequential_5/random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
4sequential_5/random_rotation_2/rotation_matrix/sub_6Sub)sequential_5/random_rotation_2/Cast_1:y:0?sequential_5/random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Ý
4sequential_5/random_rotation_2/rotation_matrix/mul_2Mul8sequential_5/random_rotation_2/rotation_matrix/Sin_1:y:08sequential_5/random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4sequential_5/random_rotation_2/rotation_matrix/Cos_1Cos3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
6sequential_5/random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Æ
4sequential_5/random_rotation_2/rotation_matrix/sub_7Sub'sequential_5/random_rotation_2/Cast:y:0?sequential_5/random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Ý
4sequential_5/random_rotation_2/rotation_matrix/mul_3Mul8sequential_5/random_rotation_2/rotation_matrix/Cos_1:y:08sequential_5/random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
2sequential_5/random_rotation_2/rotation_matrix/addAddV28sequential_5/random_rotation_2/rotation_matrix/mul_2:z:08sequential_5/random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÛ
4sequential_5/random_rotation_2/rotation_matrix/sub_8Sub8sequential_5/random_rotation_2/rotation_matrix/sub_5:z:06sequential_5/random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:sequential_5/random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ð
8sequential_5/random_rotation_2/rotation_matrix/truediv_1RealDiv8sequential_5/random_rotation_2/rotation_matrix/sub_8:z:0Csequential_5/random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4sequential_5/random_rotation_2/rotation_matrix/ShapeShape3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:
Bsequential_5/random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<sequential_5/random_rotation_2/rotation_matrix/strided_sliceStridedSlice=sequential_5/random_rotation_2/rotation_matrix/Shape:output:0Ksequential_5/random_rotation_2/rotation_matrix/strided_slice/stack:output:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4sequential_5/random_rotation_2/rotation_matrix/Cos_2Cos3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ï
>sequential_5/random_rotation_2/rotation_matrix/strided_slice_1StridedSlice8sequential_5/random_rotation_2/rotation_matrix/Cos_2:y:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
4sequential_5/random_rotation_2/rotation_matrix/Sin_2Sin3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ï
>sequential_5/random_rotation_2/rotation_matrix/strided_slice_2StridedSlice8sequential_5/random_rotation_2/rotation_matrix/Sin_2:y:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask´
2sequential_5/random_rotation_2/rotation_matrix/NegNegGsequential_5/random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ñ
>sequential_5/random_rotation_2/rotation_matrix/strided_slice_3StridedSlice:sequential_5/random_rotation_2/rotation_matrix/truediv:z:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
4sequential_5/random_rotation_2/rotation_matrix/Sin_3Sin3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ï
>sequential_5/random_rotation_2/rotation_matrix/strided_slice_4StridedSlice8sequential_5/random_rotation_2/rotation_matrix/Sin_3:y:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
4sequential_5/random_rotation_2/rotation_matrix/Cos_3Cos3sequential_5/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ï
>sequential_5/random_rotation_2/rotation_matrix/strided_slice_5StridedSlice8sequential_5/random_rotation_2/rotation_matrix/Cos_3:y:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
Dsequential_5/random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Fsequential_5/random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ó
>sequential_5/random_rotation_2/rotation_matrix/strided_slice_6StridedSlice<sequential_5/random_rotation_2/rotation_matrix/truediv_1:z:0Msequential_5/random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_5/random_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
=sequential_5/random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
;sequential_5/random_rotation_2/rotation_matrix/zeros/packedPackEsequential_5/random_rotation_2/rotation_matrix/strided_slice:output:0Fsequential_5/random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
:sequential_5/random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ù
4sequential_5/random_rotation_2/rotation_matrix/zerosFillDsequential_5/random_rotation_2/rotation_matrix/zeros/packed:output:0Csequential_5/random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
:sequential_5/random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¥
5sequential_5/random_rotation_2/rotation_matrix/concatConcatV2Gsequential_5/random_rotation_2/rotation_matrix/strided_slice_1:output:06sequential_5/random_rotation_2/rotation_matrix/Neg:y:0Gsequential_5/random_rotation_2/rotation_matrix/strided_slice_3:output:0Gsequential_5/random_rotation_2/rotation_matrix/strided_slice_4:output:0Gsequential_5/random_rotation_2/rotation_matrix/strided_slice_5:output:0Gsequential_5/random_rotation_2/rotation_matrix/strided_slice_6:output:0=sequential_5/random_rotation_2/rotation_matrix/zeros:output:0Csequential_5/random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.sequential_5/random_rotation_2/transform/ShapeShapeJsequential_5/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:
<sequential_5/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
>sequential_5/random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>sequential_5/random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6sequential_5/random_rotation_2/transform/strided_sliceStridedSlice7sequential_5/random_rotation_2/transform/Shape:output:0Esequential_5/random_rotation_2/transform/strided_slice/stack:output:0Gsequential_5/random_rotation_2/transform/strided_slice/stack_1:output:0Gsequential_5/random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:x
3sequential_5/random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    á
Csequential_5/random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Jsequential_5/random_flip_2/map/TensorArrayV2Stack/TensorListStack:tensor:0>sequential_5/random_rotation_2/rotation_matrix/concat:output:0?sequential_5/random_rotation_2/transform/strided_slice:output:0<sequential_5/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
conv2d_6/Conv2DConv2DXsequential_5/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ ¬
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides

conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Æ
conv2d_7/Conv2DConv2D max_pooling2d_6/MaxPool:output:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides

conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@j
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@¬
max_pooling2d_7/MaxPoolMaxPoolconv2d_7/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides

conv2d_8/Conv2D/ReadVariableOpReadVariableOp'conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Æ
conv2d_8/Conv2DConv2D max_pooling2d_7/MaxPool:output:0&conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides

conv2d_8/BiasAdd/ReadVariableOpReadVariableOp(conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_8/BiasAddBiasAddconv2d_8/Conv2D:output:0'conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@j
conv2d_8/ReluReluconv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@¬
max_pooling2d_8/MaxPoolMaxPoolconv2d_8/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Æ
conv2d_9/Conv2DConv2D max_pooling2d_8/MaxPool:output:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0È
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0É
conv2d_11/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_1/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp ^conv2d_8/BiasAdd/ReadVariableOp^conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp%^sequential_5/random_flip_2/map/while?^sequential_5/random_rotation_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2B
conv2d_8/BiasAdd/ReadVariableOpconv2d_8/BiasAdd/ReadVariableOp2@
conv2d_8/Conv2D/ReadVariableOpconv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2L
$sequential_5/random_flip_2/map/while$sequential_5/random_flip_2/map/while2
>sequential_5/random_rotation_2/stateful_uniform/RngReadAndSkip>sequential_5/random_rotation_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_33302

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_10_layer_call_and_return_conditional_losses_32022

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_33452

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_31891

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è

(__inference_conv2d_7_layer_call_fn_33311

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_31968w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

ü
C__inference_conv2d_8_layer_call_and_return_conditional_losses_31986

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@
 
_user_specified_nameinputs
ã?
Ï
G__inference_sequential_7_layer_call_and_return_conditional_losses_32073

inputs(
conv2d_6_31951: 
conv2d_6_31953: (
conv2d_7_31969: @
conv2d_7_31971:@(
conv2d_8_31987:@@
conv2d_8_31989:@(
conv2d_9_32005:@@
conv2d_9_32007:@)
conv2d_10_32023:@@
conv2d_10_32025:@)
conv2d_11_32041:@@
conv2d_11_32043:@ 
dense_1_32067:	@
dense_1_32069:@
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÉ
sequential_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31436è
sequential_5/PartitionedCallPartitionedCall%sequential_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31504
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_5/PartitionedCall:output:0conv2d_6_31951conv2d_6_31953*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31950ð
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_31867
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_31969conv2d_7_31971*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_31968ð
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_31879
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_31987conv2d_8_31989*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_31986ð
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_31891
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_32005conv2d_9_32007*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_32004ð
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_31903
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_32023conv2d_10_32025*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_32022ó
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31915
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_32041conv2d_11_32043*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_32040ó
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31927Ý
flatten_1/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_32053
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_32067dense_1_32069*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32066w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
m
G__inference_sequential_4_layer_call_and_return_conditional_losses_31478
resizing_2_input
identityÏ
resizing_2/PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_2_layer_call_and_return_conditional_losses_31423ä
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_2_layer_call_and_return_conditional_losses_31433v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_2_input
Ë
H
,__inference_sequential_5_layer_call_fn_32987

inputs
identity¼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31504j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«

map_while_body_31662$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	¢2map/while/stateful_uniform_full_int/RngReadAndSkip¢4map/while/stateful_uniform_full_int_1/RngReadAndSkip
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¹
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:§
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ã
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskð
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::¢
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ý
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: 
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_31722*#
output_shapes
:*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_31721£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¿
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¿
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask§
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:«
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Í
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R 
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskû
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ã
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: 
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ô
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ô
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:* 
_read_only_resource_inputs
 *F
else_branch7R5
3map_while_stateless_random_flip_up_down_false_31771*#
output_shapes
:*E
then_branch6R4
2map_while_stateless_random_flip_up_down_true_31770
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:î
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:éèÒQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: ¼
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
è

(__inference_conv2d_9_layer_call_fn_33371

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_32004w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¦

Arandom_flip_2_map_while_stateless_random_flip_up_down_false_33125
random_flip_2_map_while_stateless_random_flip_up_down_identity_random_flip_2_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_2_map_while_stateless_random_flip_up_down_identity
>random_flip_2/map/while/stateless_random_flip_up_down/IdentityIdentityrandom_flip_2_map_while_stateless_random_flip_up_down_identity_random_flip_2_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"
>random_flip_2_map_while_stateless_random_flip_up_down_identityGrandom_flip_2/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
µÓ
ð 
!__inference__traced_restore_34176
file_prefix:
 assignvariableop_conv2d_6_kernel: .
 assignvariableop_1_conv2d_6_bias: <
"assignvariableop_2_conv2d_7_kernel: @.
 assignvariableop_3_conv2d_7_bias:@<
"assignvariableop_4_conv2d_8_kernel:@@.
 assignvariableop_5_conv2d_8_bias:@<
"assignvariableop_6_conv2d_9_kernel:@@.
 assignvariableop_7_conv2d_9_bias:@=
#assignvariableop_8_conv2d_10_kernel:@@/
!assignvariableop_9_conv2d_10_bias:@>
$assignvariableop_10_conv2d_11_kernel:@@0
"assignvariableop_11_conv2d_11_bias:@5
"assignvariableop_12_dense_1_kernel:	@.
 assignvariableop_13_dense_1_bias:@'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: ,
assignvariableop_23_statevar_1:	*
assignvariableop_24_statevar:	D
*assignvariableop_25_adam_conv2d_6_kernel_m: 6
(assignvariableop_26_adam_conv2d_6_bias_m: D
*assignvariableop_27_adam_conv2d_7_kernel_m: @6
(assignvariableop_28_adam_conv2d_7_bias_m:@D
*assignvariableop_29_adam_conv2d_8_kernel_m:@@6
(assignvariableop_30_adam_conv2d_8_bias_m:@D
*assignvariableop_31_adam_conv2d_9_kernel_m:@@6
(assignvariableop_32_adam_conv2d_9_bias_m:@E
+assignvariableop_33_adam_conv2d_10_kernel_m:@@7
)assignvariableop_34_adam_conv2d_10_bias_m:@E
+assignvariableop_35_adam_conv2d_11_kernel_m:@@7
)assignvariableop_36_adam_conv2d_11_bias_m:@<
)assignvariableop_37_adam_dense_1_kernel_m:	@5
'assignvariableop_38_adam_dense_1_bias_m:@D
*assignvariableop_39_adam_conv2d_6_kernel_v: 6
(assignvariableop_40_adam_conv2d_6_bias_v: D
*assignvariableop_41_adam_conv2d_7_kernel_v: @6
(assignvariableop_42_adam_conv2d_7_bias_v:@D
*assignvariableop_43_adam_conv2d_8_kernel_v:@@6
(assignvariableop_44_adam_conv2d_8_bias_v:@D
*assignvariableop_45_adam_conv2d_9_kernel_v:@@6
(assignvariableop_46_adam_conv2d_9_bias_v:@E
+assignvariableop_47_adam_conv2d_10_kernel_v:@@7
)assignvariableop_48_adam_conv2d_10_bias_v:@E
+assignvariableop_49_adam_conv2d_11_kernel_v:@@7
)assignvariableop_50_adam_conv2d_11_bias_v:@<
)assignvariableop_51_adam_dense_1_kernel_v:	@5
'assignvariableop_52_adam_dense_1_bias_v:@
identity_54¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*®
value¤B¡6B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÜ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:6*
dtype0*
valuevBt6B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¯
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*î
_output_shapesÛ
Ø::::::::::::::::::::::::::::::::::::::::::::::::::::::*D
dtypes:
826			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_10_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_10_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_11_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_11_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_statevar_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_statevarIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_6_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_6_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_7_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_7_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_8_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_8_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_9_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_9_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_10_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_10_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_11_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_11_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_conv2d_6_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_conv2d_6_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_conv2d_7_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_conv2d_7_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv2d_8_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_conv2d_8_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_9_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv2d_9_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_10_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_10_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_11_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_11_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_1_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ý	
Identity_53Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_54IdentityIdentity_53:output:0^NoOp_1*
T0*
_output_shapes
: Ê	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_54Identity_54:output:0*
_input_shapesn
l: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ø
b
F__inference_rescaling_2_layer_call_and_return_conditional_losses_31433

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Çe
æ
 __inference__wrapped_model_31410
sequential_4_inputN
4sequential_7_conv2d_6_conv2d_readvariableop_resource: C
5sequential_7_conv2d_6_biasadd_readvariableop_resource: N
4sequential_7_conv2d_7_conv2d_readvariableop_resource: @C
5sequential_7_conv2d_7_biasadd_readvariableop_resource:@N
4sequential_7_conv2d_8_conv2d_readvariableop_resource:@@C
5sequential_7_conv2d_8_biasadd_readvariableop_resource:@N
4sequential_7_conv2d_9_conv2d_readvariableop_resource:@@C
5sequential_7_conv2d_9_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_10_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_10_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_11_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_11_biasadd_readvariableop_resource:@F
3sequential_7_dense_1_matmul_readvariableop_resource:	@B
4sequential_7_dense_1_biasadd_readvariableop_resource:@
identity¢-sequential_7/conv2d_10/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_10/Conv2D/ReadVariableOp¢-sequential_7/conv2d_11/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_11/Conv2D/ReadVariableOp¢,sequential_7/conv2d_6/BiasAdd/ReadVariableOp¢+sequential_7/conv2d_6/Conv2D/ReadVariableOp¢,sequential_7/conv2d_7/BiasAdd/ReadVariableOp¢+sequential_7/conv2d_7/Conv2D/ReadVariableOp¢,sequential_7/conv2d_8/BiasAdd/ReadVariableOp¢+sequential_7/conv2d_8/Conv2D/ReadVariableOp¢,sequential_7/conv2d_9/BiasAdd/ReadVariableOp¢+sequential_7/conv2d_9/Conv2D/ReadVariableOp¢+sequential_7/dense_1/BiasAdd/ReadVariableOp¢*sequential_7/dense_1/MatMul/ReadVariableOp
0sequential_7/sequential_4/resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ñ
:sequential_7/sequential_4/resizing_2/resize/ResizeBilinearResizeBilinearsequential_4_input9sequential_7/sequential_4/resizing_2/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(q
,sequential_7/sequential_4/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;s
.sequential_7/sequential_4/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ð
)sequential_7/sequential_4/rescaling_2/mulMulKsequential_7/sequential_4/resizing_2/resize/ResizeBilinear:resized_images:05sequential_7/sequential_4/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
)sequential_7/sequential_4/rescaling_2/addAddV2-sequential_7/sequential_4/rescaling_2/mul:z:07sequential_7/sequential_4/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
+sequential_7/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_7_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ï
sequential_7/conv2d_6/Conv2DConv2D-sequential_7/sequential_4/rescaling_2/add:z:03sequential_7/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides

,sequential_7/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Á
sequential_7/conv2d_6/BiasAddBiasAdd%sequential_7/conv2d_6/Conv2D:output:04sequential_7/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 
sequential_7/conv2d_6/ReluRelu&sequential_7/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ Æ
$sequential_7/max_pooling2d_6/MaxPoolMaxPool(sequential_7/conv2d_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
¨
+sequential_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp4sequential_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0í
sequential_7/conv2d_7/Conv2DConv2D-sequential_7/max_pooling2d_6/MaxPool:output:03sequential_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides

,sequential_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
sequential_7/conv2d_7/BiasAddBiasAdd%sequential_7/conv2d_7/Conv2D:output:04sequential_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@
sequential_7/conv2d_7/ReluRelu&sequential_7/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@Æ
$sequential_7/max_pooling2d_7/MaxPoolMaxPool(sequential_7/conv2d_7/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides
¨
+sequential_7/conv2d_8/Conv2D/ReadVariableOpReadVariableOp4sequential_7_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0í
sequential_7/conv2d_8/Conv2DConv2D-sequential_7/max_pooling2d_7/MaxPool:output:03sequential_7/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides

,sequential_7/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
sequential_7/conv2d_8/BiasAddBiasAdd%sequential_7/conv2d_8/Conv2D:output:04sequential_7/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@
sequential_7/conv2d_8/ReluRelu&sequential_7/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@Æ
$sequential_7/max_pooling2d_8/MaxPoolMaxPool(sequential_7/conv2d_8/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
¨
+sequential_7/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_7_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0í
sequential_7/conv2d_9/Conv2DConv2D-sequential_7/max_pooling2d_8/MaxPool:output:03sequential_7/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

,sequential_7/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¿
sequential_7/conv2d_9/BiasAddBiasAdd%sequential_7/conv2d_9/Conv2D:output:04sequential_7/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_7/conv2d_9/ReluRelu&sequential_7/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
$sequential_7/max_pooling2d_9/MaxPoolMaxPool(sequential_7/conv2d_9/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
ª
,sequential_7/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ï
sequential_7/conv2d_10/Conv2DConv2D-sequential_7/max_pooling2d_9/MaxPool:output:04sequential_7/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
 
-sequential_7/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_7/conv2d_10/BiasAddBiasAdd&sequential_7/conv2d_10/Conv2D:output:05sequential_7/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_7/conv2d_10/ReluRelu'sequential_7/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
%sequential_7/max_pooling2d_10/MaxPoolMaxPool)sequential_7/conv2d_10/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
ª
,sequential_7/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ð
sequential_7/conv2d_11/Conv2DConv2D.sequential_7/max_pooling2d_10/MaxPool:output:04sequential_7/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
 
-sequential_7/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_7/conv2d_11/BiasAddBiasAdd&sequential_7/conv2d_11/Conv2D:output:05sequential_7/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_7/conv2d_11/ReluRelu'sequential_7/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
%sequential_7/max_pooling2d_11/MaxPoolMaxPool)sequential_7/conv2d_11/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
m
sequential_7/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ³
sequential_7/flatten_1/ReshapeReshape.sequential_7/max_pooling2d_11/MaxPool:output:0%sequential_7/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_7/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_7_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0´
sequential_7/dense_1/MatMulMatMul'sequential_7/flatten_1/Reshape:output:02sequential_7/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+sequential_7/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_7_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0µ
sequential_7/dense_1/BiasAddBiasAdd%sequential_7/dense_1/MatMul:product:03sequential_7/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_7/dense_1/SoftmaxSoftmax%sequential_7/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
IdentityIdentity&sequential_7/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ó
NoOpNoOp.^sequential_7/conv2d_10/BiasAdd/ReadVariableOp-^sequential_7/conv2d_10/Conv2D/ReadVariableOp.^sequential_7/conv2d_11/BiasAdd/ReadVariableOp-^sequential_7/conv2d_11/Conv2D/ReadVariableOp-^sequential_7/conv2d_6/BiasAdd/ReadVariableOp,^sequential_7/conv2d_6/Conv2D/ReadVariableOp-^sequential_7/conv2d_7/BiasAdd/ReadVariableOp,^sequential_7/conv2d_7/Conv2D/ReadVariableOp-^sequential_7/conv2d_8/BiasAdd/ReadVariableOp,^sequential_7/conv2d_8/Conv2D/ReadVariableOp-^sequential_7/conv2d_9/BiasAdd/ReadVariableOp,^sequential_7/conv2d_9/Conv2D/ReadVariableOp,^sequential_7/dense_1/BiasAdd/ReadVariableOp+^sequential_7/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 2^
-sequential_7/conv2d_10/BiasAdd/ReadVariableOp-sequential_7/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_10/Conv2D/ReadVariableOp,sequential_7/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_11/BiasAdd/ReadVariableOp-sequential_7/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_11/Conv2D/ReadVariableOp,sequential_7/conv2d_11/Conv2D/ReadVariableOp2\
,sequential_7/conv2d_6/BiasAdd/ReadVariableOp,sequential_7/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_7/conv2d_6/Conv2D/ReadVariableOp+sequential_7/conv2d_6/Conv2D/ReadVariableOp2\
,sequential_7/conv2d_7/BiasAdd/ReadVariableOp,sequential_7/conv2d_7/BiasAdd/ReadVariableOp2Z
+sequential_7/conv2d_7/Conv2D/ReadVariableOp+sequential_7/conv2d_7/Conv2D/ReadVariableOp2\
,sequential_7/conv2d_8/BiasAdd/ReadVariableOp,sequential_7/conv2d_8/BiasAdd/ReadVariableOp2Z
+sequential_7/conv2d_8/Conv2D/ReadVariableOp+sequential_7/conv2d_8/Conv2D/ReadVariableOp2\
,sequential_7/conv2d_9/BiasAdd/ReadVariableOp,sequential_7/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_7/conv2d_9/Conv2D/ReadVariableOp+sequential_7/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_7/dense_1/BiasAdd/ReadVariableOp+sequential_7/dense_1/BiasAdd/ReadVariableOp2X
*sequential_7/dense_1/MatMul/ReadVariableOp*sequential_7/dense_1/MatMul/ReadVariableOp:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_4_input

Ñ
,__inference_sequential_7_layer_call_fn_32339
sequential_4_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	@

unknown_14:@
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_32267o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_4_input
ý
c
G__inference_sequential_5_layer_call_and_return_conditional_losses_31504

inputs
identityË
random_flip_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_31495ó
!random_rotation_2/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31501|
IdentityIdentity*random_rotation_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

H__inference_random_flip_2_layer_call_and_return_conditional_losses_31804

inputs
map_while_input_6:	
identity¢	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÂ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_31662* 
condR
map_while_cond_31661*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ô
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2
	map/while	map/while:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­B
Æ
G__inference_sequential_7_layer_call_and_return_conditional_losses_32439
sequential_4_input 
sequential_5_32391:	 
sequential_5_32393:	(
conv2d_6_32396: 
conv2d_6_32398: (
conv2d_7_32402: @
conv2d_7_32404:@(
conv2d_8_32408:@@
conv2d_8_32410:@(
conv2d_9_32414:@@
conv2d_9_32416:@)
conv2d_10_32420:@@
conv2d_10_32422:@)
conv2d_11_32426:@@
conv2d_11_32428:@ 
dense_1_32433:	@
dense_1_32435:@
identity¢!conv2d_10/StatefulPartitionedCall¢!conv2d_11/StatefulPartitionedCall¢ conv2d_6/StatefulPartitionedCall¢ conv2d_7/StatefulPartitionedCall¢ conv2d_8/StatefulPartitionedCall¢ conv2d_9/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢$sequential_5/StatefulPartitionedCallÕ
sequential_4/PartitionedCallPartitionedCallsequential_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31464¢
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0sequential_5_32391sequential_5_32393*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_31826
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0conv2d_6_32396conv2d_6_32398*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_31950ð
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_31867
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_32402conv2d_7_32404*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_31968ð
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_31879
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_32408conv2d_8_32410*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_31986ð
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_31891
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_32414conv2d_9_32416*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_32004ð
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_31903
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_32420conv2d_10_32422*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_32022ó
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31915
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_32426conv2d_11_32428*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_32040ó
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31927Ý
flatten_1/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_32053
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_32433dense_1_32435*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_32066w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ã
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_4_input
ö	
¢
Crandom_flip_2_map_while_stateless_random_flip_left_right_true_33075
random_flip_2_map_while_stateless_random_flip_left_right_reversev2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_2_map_while_stateless_random_flip_left_right_identity
Grandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:á
Brandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2random_flip_2_map_while_stateless_random_flip_left_right_reversev2_random_flip_2_map_while_stateless_random_flip_left_right_control_dependencyPrandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:É
Arandom_flip_2/map/while/stateless_random_flip_left_right/IdentityIdentityKrandom_flip_2/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:"
Arandom_flip_2_map_while_stateless_random_flip_left_right_identityJrandom_flip_2/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
Ë
H
,__inference_sequential_4_layer_call_fn_32962

inputs
identity¼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_31464j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯

,__inference_sequential_7_layer_call_fn_32104
sequential_4_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_32073o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namesequential_4_input
¤	
p
G__inference_sequential_5_layer_call_and_return_conditional_losses_31848
random_flip_2_input
identityØ
random_flip_2/PartitionedCallPartitionedCallrandom_flip_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_31495ó
!random_rotation_2/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31501|
IdentityIdentity*random_rotation_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_2_input
¸
L
0__inference_max_pooling2d_10_layer_call_fn_33417

inputs
identityÙ
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
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_31915
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

H__inference_random_flip_2_layer_call_and_return_conditional_losses_33681

inputs
map_while_input_6:	
identity¢	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÂ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_33539* 
condR
map_while_cond_33538*!
output_shapes
: : : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ô
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2
	map/while	map/while:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
M
1__inference_random_rotation_2_layer_call_fn_33686

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_31501j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_6_layer_call_fn_33297

inputs
identityØ
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
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_31867
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
Ü
3map_while_stateless_random_flip_up_down_false_33648o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identityØ
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
::* &
$
_output_shapes
:
¸
L
0__inference_max_pooling2d_11_layer_call_fn_33447

inputs
identityÙ
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
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_31927
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Å
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33815

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ø
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ¡
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ê
serving_default¶
[
sequential_4_inputE
$serving_default_sequential_4_input:0ÿÿÿÿÿÿÿÿÿ;
dense_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ@tensorflow/serving/predict:«î
ò
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
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ä
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ä
"layer-0
#layer-1
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ý
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
¥
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias
 A_jit_compiled_convolution_op"
_tf_keras_layer
¥
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
Obias
 P_jit_compiled_convolution_op"
_tf_keras_layer
¥
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias
 __jit_compiled_convolution_op"
_tf_keras_layer
¥
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op"
_tf_keras_layer
¥
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses

{kernel
|bias
 }_jit_compiled_convolution_op"
_tf_keras_layer
©
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer

00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13"
trackable_list_wrapper

00
11
?2
@3
N4
O5
]6
^7
l8
m9
{10
|11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î
trace_0
trace_1
trace_2
trace_32û
,__inference_sequential_7_layer_call_fn_32104
,__inference_sequential_7_layer_call_fn_32513
,__inference_sequential_7_layer_call_fn_32550
,__inference_sequential_7_layer_call_fn_32339À
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
 ztrace_0ztrace_1ztrace_2ztrace_3
Ú
trace_0
trace_1
trace_2
trace_32ç
G__inference_sequential_7_layer_call_and_return_conditional_losses_32617
G__inference_sequential_7_layer_call_and_return_conditional_losses_32952
G__inference_sequential_7_layer_call_and_return_conditional_losses_32387
G__inference_sequential_7_layer_call_and_return_conditional_losses_32439À
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
 ztrace_0ztrace_1ztrace_2ztrace_3
ÖBÓ
 __inference__wrapped_model_31410sequential_4_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô
	iter
 beta_1
¡beta_2

¢decay
£learning_rate0mê1më?mì@míNmîOmï]mð^mñlmòmmó{mô|mõ	mö	m÷0vø1vù?vú@vûNvüOvý]vþ^vÿlvmv{v|v	v	v"
	optimizer
-
¤serving_default"
signature_map
«
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
©__call__
+ª&call_and_return_all_conditional_losses"
_tf_keras_layer
«
«	variables
¬trainable_variables
­regularization_losses
®	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
î
¶trace_0
·trace_1
¸trace_2
¹trace_32û
,__inference_sequential_4_layer_call_fn_31439
,__inference_sequential_4_layer_call_fn_32957
,__inference_sequential_4_layer_call_fn_32962
,__inference_sequential_4_layer_call_fn_31472À
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
 z¶trace_0z·trace_1z¸trace_2z¹trace_3
Ú
ºtrace_0
»trace_1
¼trace_2
½trace_32ç
G__inference_sequential_4_layer_call_and_return_conditional_losses_32972
G__inference_sequential_4_layer_call_and_return_conditional_losses_32982
G__inference_sequential_4_layer_call_and_return_conditional_losses_31478
G__inference_sequential_4_layer_call_and_return_conditional_losses_31484À
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
 zºtrace_0z»trace_1z¼trace_2z½trace_3
Ã
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses
Ä_random_generator"
_tf_keras_layer
Ã
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses
Ë_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ìnon_trainable_variables
Ílayers
Îmetrics
 Ïlayer_regularization_losses
Ðlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
î
Ñtrace_0
Òtrace_1
Ótrace_2
Ôtrace_32û
,__inference_sequential_5_layer_call_fn_31507
,__inference_sequential_5_layer_call_fn_32987
,__inference_sequential_5_layer_call_fn_32996
,__inference_sequential_5_layer_call_fn_31842À
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
 zÑtrace_0zÒtrace_1zÓtrace_2zÔtrace_3
Ú
Õtrace_0
Ötrace_1
×trace_2
Øtrace_32ç
G__inference_sequential_5_layer_call_and_return_conditional_losses_33000
G__inference_sequential_5_layer_call_and_return_conditional_losses_33272
G__inference_sequential_5_layer_call_and_return_conditional_losses_31848
G__inference_sequential_5_layer_call_and_return_conditional_losses_31858À
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
 zÕtrace_0zÖtrace_1z×trace_2zØtrace_3
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
î
Þtrace_02Ï
(__inference_conv2d_6_layer_call_fn_33281¢
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
 zÞtrace_0

ßtrace_02ê
C__inference_conv2d_6_layer_call_and_return_conditional_losses_33292¢
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
 zßtrace_0
):' 2conv2d_6/kernel
: 2conv2d_6/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
õ
åtrace_02Ö
/__inference_max_pooling2d_6_layer_call_fn_33297¢
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
 zåtrace_0

ætrace_02ñ
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_33302¢
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
 zætrace_0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
î
ìtrace_02Ï
(__inference_conv2d_7_layer_call_fn_33311¢
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
 zìtrace_0

ítrace_02ê
C__inference_conv2d_7_layer_call_and_return_conditional_losses_33322¢
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
 zítrace_0
):' @2conv2d_7/kernel
:@2conv2d_7/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
õ
ótrace_02Ö
/__inference_max_pooling2d_7_layer_call_fn_33327¢
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
 zótrace_0

ôtrace_02ñ
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_33332¢
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
 zôtrace_0
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
î
útrace_02Ï
(__inference_conv2d_8_layer_call_fn_33341¢
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
 zútrace_0

ûtrace_02ê
C__inference_conv2d_8_layer_call_and_return_conditional_losses_33352¢
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
 zûtrace_0
):'@@2conv2d_8/kernel
:@2conv2d_8/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
õ
trace_02Ö
/__inference_max_pooling2d_8_layer_call_fn_33357¢
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
 ztrace_0

trace_02ñ
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_33362¢
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
 ztrace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
î
trace_02Ï
(__inference_conv2d_9_layer_call_fn_33371¢
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
 ztrace_0

trace_02ê
C__inference_conv2d_9_layer_call_and_return_conditional_losses_33382¢
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
 ztrace_0
):'@@2conv2d_9/kernel
:@2conv2d_9/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
õ
trace_02Ö
/__inference_max_pooling2d_9_layer_call_fn_33387¢
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
 ztrace_0

trace_02ñ
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_33392¢
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
 ztrace_0
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ï
trace_02Ð
)__inference_conv2d_10_layer_call_fn_33401¢
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
 ztrace_0

trace_02ë
D__inference_conv2d_10_layer_call_and_return_conditional_losses_33412¢
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
 ztrace_0
*:(@@2conv2d_10/kernel
:@2conv2d_10/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
ö
trace_02×
0__inference_max_pooling2d_10_layer_call_fn_33417¢
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
 ztrace_0

trace_02ò
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_33422¢
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
 ztrace_0
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
ï
¤trace_02Ð
)__inference_conv2d_11_layer_call_fn_33431¢
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
 z¤trace_0

¥trace_02ë
D__inference_conv2d_11_layer_call_and_return_conditional_losses_33442¢
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
 z¥trace_0
*:(@@2conv2d_11/kernel
:@2conv2d_11/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¶
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö
«trace_02×
0__inference_max_pooling2d_11_layer_call_fn_33447¢
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
 z«trace_0

¬trace_02ò
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_33452¢
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
 z¬trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ï
²trace_02Ð
)__inference_flatten_1_layer_call_fn_33457¢
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
 z²trace_0

³trace_02ë
D__inference_flatten_1_layer_call_and_return_conditional_losses_33463¢
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
 z³trace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
í
¹trace_02Î
'__inference_dense_1_layer_call_fn_33472¢
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
 z¹trace_0

ºtrace_02é
B__inference_dense_1_layer_call_and_return_conditional_losses_33483¢
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
 zºtrace_0
!:	@2dense_1/kernel
:@2dense_1/bias
 "
trackable_list_wrapper

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
15"
trackable_list_wrapper
0
»0
¼1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_7_layer_call_fn_32104sequential_4_input"À
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
þBû
,__inference_sequential_7_layer_call_fn_32513inputs"À
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
þBû
,__inference_sequential_7_layer_call_fn_32550inputs"À
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
B
,__inference_sequential_7_layer_call_fn_32339sequential_4_input"À
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
B
G__inference_sequential_7_layer_call_and_return_conditional_losses_32617inputs"À
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
B
G__inference_sequential_7_layer_call_and_return_conditional_losses_32952inputs"À
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
¥B¢
G__inference_sequential_7_layer_call_and_return_conditional_losses_32387sequential_4_input"À
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
¥B¢
G__inference_sequential_7_layer_call_and_return_conditional_losses_32439sequential_4_input"À
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÕBÒ
#__inference_signature_wrapper_32480sequential_4_input"
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
¥	variables
¦trainable_variables
§regularization_losses
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
ð
Âtrace_02Ñ
*__inference_resizing_2_layer_call_fn_33488¢
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
 zÂtrace_0

Ãtrace_02ì
E__inference_resizing_2_layer_call_and_return_conditional_losses_33494¢
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
 zÃtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
«	variables
¬trainable_variables
­regularization_losses
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
ñ
Étrace_02Ò
+__inference_rescaling_2_layer_call_fn_33499¢
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
 zÉtrace_0

Êtrace_02í
F__inference_rescaling_2_layer_call_and_return_conditional_losses_33507¢
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
 zÊtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_4_layer_call_fn_31439resizing_2_input"À
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
þBû
,__inference_sequential_4_layer_call_fn_32957inputs"À
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
þBû
,__inference_sequential_4_layer_call_fn_32962inputs"À
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
B
,__inference_sequential_4_layer_call_fn_31472resizing_2_input"À
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
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_32972inputs"À
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
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_32982inputs"À
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
£B 
G__inference_sequential_4_layer_call_and_return_conditional_losses_31478resizing_2_input"À
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
£B 
G__inference_sequential_4_layer_call_and_return_conditional_losses_31484resizing_2_input"À
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
Ð
Ðtrace_0
Ñtrace_12
-__inference_random_flip_2_layer_call_fn_33512
-__inference_random_flip_2_layer_call_fn_33519´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÐtrace_0zÑtrace_1

Òtrace_0
Ótrace_12Ë
H__inference_random_flip_2_layer_call_and_return_conditional_losses_33523
H__inference_random_flip_2_layer_call_and_return_conditional_losses_33681´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÒtrace_0zÓtrace_1
/
Ô
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
Ø
Útrace_0
Ûtrace_12
1__inference_random_rotation_2_layer_call_fn_33686
1__inference_random_rotation_2_layer_call_fn_33693´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÚtrace_0zÛtrace_1

Ütrace_0
Ýtrace_12Ó
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33697
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33815´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÜtrace_0zÝtrace_1
/
Þ
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_5_layer_call_fn_31507random_flip_2_input"À
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
þBû
,__inference_sequential_5_layer_call_fn_32987inputs"À
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
þBû
,__inference_sequential_5_layer_call_fn_32996inputs"À
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
B
,__inference_sequential_5_layer_call_fn_31842random_flip_2_input"À
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
B
G__inference_sequential_5_layer_call_and_return_conditional_losses_33000inputs"À
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
B
G__inference_sequential_5_layer_call_and_return_conditional_losses_33272inputs"À
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
¦B£
G__inference_sequential_5_layer_call_and_return_conditional_losses_31848random_flip_2_input"À
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
¦B£
G__inference_sequential_5_layer_call_and_return_conditional_losses_31858random_flip_2_input"À
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
ÜBÙ
(__inference_conv2d_6_layer_call_fn_33281inputs"¢
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
÷Bô
C__inference_conv2d_6_layer_call_and_return_conditional_losses_33292inputs"¢
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
ãBà
/__inference_max_pooling2d_6_layer_call_fn_33297inputs"¢
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
þBû
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_33302inputs"¢
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
ÜBÙ
(__inference_conv2d_7_layer_call_fn_33311inputs"¢
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
÷Bô
C__inference_conv2d_7_layer_call_and_return_conditional_losses_33322inputs"¢
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
ãBà
/__inference_max_pooling2d_7_layer_call_fn_33327inputs"¢
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
þBû
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_33332inputs"¢
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
ÜBÙ
(__inference_conv2d_8_layer_call_fn_33341inputs"¢
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
÷Bô
C__inference_conv2d_8_layer_call_and_return_conditional_losses_33352inputs"¢
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
ãBà
/__inference_max_pooling2d_8_layer_call_fn_33357inputs"¢
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
þBû
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_33362inputs"¢
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
ÜBÙ
(__inference_conv2d_9_layer_call_fn_33371inputs"¢
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
÷Bô
C__inference_conv2d_9_layer_call_and_return_conditional_losses_33382inputs"¢
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
ãBà
/__inference_max_pooling2d_9_layer_call_fn_33387inputs"¢
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
þBû
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_33392inputs"¢
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
ÝBÚ
)__inference_conv2d_10_layer_call_fn_33401inputs"¢
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
øBõ
D__inference_conv2d_10_layer_call_and_return_conditional_losses_33412inputs"¢
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
äBá
0__inference_max_pooling2d_10_layer_call_fn_33417inputs"¢
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
ÿBü
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_33422inputs"¢
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
ÝBÚ
)__inference_conv2d_11_layer_call_fn_33431inputs"¢
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
øBõ
D__inference_conv2d_11_layer_call_and_return_conditional_losses_33442inputs"¢
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
äBá
0__inference_max_pooling2d_11_layer_call_fn_33447inputs"¢
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
ÿBü
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_33452inputs"¢
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
ÝBÚ
)__inference_flatten_1_layer_call_fn_33457inputs"¢
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
øBõ
D__inference_flatten_1_layer_call_and_return_conditional_losses_33463inputs"¢
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
ÛBØ
'__inference_dense_1_layer_call_fn_33472inputs"¢
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
öBó
B__inference_dense_1_layer_call_and_return_conditional_losses_33483inputs"¢
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
R
ß	variables
à	keras_api

átotal

âcount"
_tf_keras_metric
c
ã	variables
ä	keras_api

åtotal

æcount
ç
_fn_kwargs"
_tf_keras_metric
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
ÞBÛ
*__inference_resizing_2_layer_call_fn_33488inputs"¢
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
ùBö
E__inference_resizing_2_layer_call_and_return_conditional_losses_33494inputs"¢
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
ßBÜ
+__inference_rescaling_2_layer_call_fn_33499inputs"¢
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
úB÷
F__inference_rescaling_2_layer_call_and_return_conditional_losses_33507inputs"¢
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
óBð
-__inference_random_flip_2_layer_call_fn_33512inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_random_flip_2_layer_call_fn_33519inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_random_flip_2_layer_call_and_return_conditional_losses_33523inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_random_flip_2_layer_call_and_return_conditional_losses_33681inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
/
è
_state_var"
_generic_user_object
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
÷Bô
1__inference_random_rotation_2_layer_call_fn_33686inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
÷Bô
1__inference_random_rotation_2_layer_call_fn_33693inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33697inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33815inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
/
é
_state_var"
_generic_user_object
0
á0
â1"
trackable_list_wrapper
.
ß	variables"
_generic_user_object
:  (2total
:  (2count
0
å0
æ1"
trackable_list_wrapper
.
ã	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
:	2StateVar
:	2StateVar
.:, 2Adam/conv2d_6/kernel/m
 : 2Adam/conv2d_6/bias/m
.:, @2Adam/conv2d_7/kernel/m
 :@2Adam/conv2d_7/bias/m
.:,@@2Adam/conv2d_8/kernel/m
 :@2Adam/conv2d_8/bias/m
.:,@@2Adam/conv2d_9/kernel/m
 :@2Adam/conv2d_9/bias/m
/:-@@2Adam/conv2d_10/kernel/m
!:@2Adam/conv2d_10/bias/m
/:-@@2Adam/conv2d_11/kernel/m
!:@2Adam/conv2d_11/bias/m
&:$	@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
.:, 2Adam/conv2d_6/kernel/v
 : 2Adam/conv2d_6/bias/v
.:, @2Adam/conv2d_7/kernel/v
 :@2Adam/conv2d_7/bias/v
.:,@@2Adam/conv2d_8/kernel/v
 :@2Adam/conv2d_8/bias/v
.:,@@2Adam/conv2d_9/kernel/v
 :@2Adam/conv2d_9/bias/v
/:-@@2Adam/conv2d_10/kernel/v
!:@2Adam/conv2d_10/bias/v
/:-@@2Adam/conv2d_11/kernel/v
!:@2Adam/conv2d_11/bias/v
&:$	@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v±
 __inference__wrapped_model_3141001?@NO]^lm{|E¢B
;¢8
63
sequential_4_inputÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ@´
D__inference_conv2d_10_layer_call_and_return_conditional_losses_33412llm7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_10_layer_call_fn_33401_lm7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@´
D__inference_conv2d_11_layer_call_and_return_conditional_losses_33442l{|7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_11_layer_call_fn_33431_{|7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@·
C__inference_conv2d_6_layer_call_and_return_conditional_losses_33292p019¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿþþ 
 
(__inference_conv2d_6_layer_call_fn_33281c019¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿþþ ³
C__inference_conv2d_7_layer_call_and_return_conditional_losses_33322l?@7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ}}@
 
(__inference_conv2d_7_layer_call_fn_33311_?@7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ}}@³
C__inference_conv2d_8_layer_call_and_return_conditional_losses_33352lNO7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ>>@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ<<@
 
(__inference_conv2d_8_layer_call_fn_33341_NO7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ>>@
ª " ÿÿÿÿÿÿÿÿÿ<<@³
C__inference_conv2d_9_layer_call_and_return_conditional_losses_33382l]^7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_conv2d_9_layer_call_fn_33371_]^7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@¥
B__inference_dense_1_layer_call_and_return_conditional_losses_33483_0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
'__inference_dense_1_layer_call_fn_33472R0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@©
D__inference_flatten_1_layer_call_and_return_conditional_losses_33463a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_flatten_1_layer_call_fn_33457T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_33422R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_10_layer_call_fn_33417R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_33452R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_11_layer_call_fn_33447R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_33302R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_6_layer_call_fn_33297R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_33332R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_7_layer_call_fn_33327R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_33362R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_8_layer_call_fn_33357R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_33392R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_9_layer_call_fn_33387R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼
H__inference_random_flip_2_layer_call_and_return_conditional_losses_33523p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_random_flip_2_layer_call_and_return_conditional_losses_33681tè=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_random_flip_2_layer_call_fn_33512c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ""ÿÿÿÿÿÿÿÿÿ
-__inference_random_flip_2_layer_call_fn_33519gè=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª ""ÿÿÿÿÿÿÿÿÿÀ
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33697p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ä
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_33815té=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
1__inference_random_rotation_2_layer_call_fn_33686c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ""ÿÿÿÿÿÿÿÿÿ
1__inference_random_rotation_2_layer_call_fn_33693gé=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ
p
ª ""ÿÿÿÿÿÿÿÿÿ¶
F__inference_rescaling_2_layer_call_and_return_conditional_losses_33507l9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_rescaling_2_layer_call_fn_33499_9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿµ
E__inference_resizing_2_layer_call_and_return_conditional_losses_33494l9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 
*__inference_resizing_2_layer_call_fn_33488_9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿÉ
G__inference_sequential_4_layer_call_and_return_conditional_losses_31478~K¢H
A¢>
41
resizing_2_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 É
G__inference_sequential_4_layer_call_and_return_conditional_losses_31484~K¢H
A¢>
41
resizing_2_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ¿
G__inference_sequential_4_layer_call_and_return_conditional_losses_32972tA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ¿
G__inference_sequential_4_layer_call_and_return_conditional_losses_32982tA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ¡
,__inference_sequential_4_layer_call_fn_31439qK¢H
A¢>
41
resizing_2_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ¡
,__inference_sequential_4_layer_call_fn_31472qK¢H
A¢>
41
resizing_2_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_4_layer_call_fn_32957gA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_4_layer_call_fn_32962gA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿÍ
G__inference_sequential_5_layer_call_and_return_conditional_losses_31848N¢K
D¢A
74
random_flip_2_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ó
G__inference_sequential_5_layer_call_and_return_conditional_losses_31858èéN¢K
D¢A
74
random_flip_2_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ¿
G__inference_sequential_5_layer_call_and_return_conditional_losses_33000tA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Å
G__inference_sequential_5_layer_call_and_return_conditional_losses_33272zèéA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ¤
,__inference_sequential_5_layer_call_fn_31507tN¢K
D¢A
74
random_flip_2_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿª
,__inference_sequential_5_layer_call_fn_31842zèéN¢K
D¢A
74
random_flip_2_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_5_layer_call_fn_32987gA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_5_layer_call_fn_32996mèéA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿÔ
G__inference_sequential_7_layer_call_and_return_conditional_losses_3238701?@NO]^lm{|M¢J
C¢@
63
sequential_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ø
G__inference_sequential_7_layer_call_and_return_conditional_losses_32439èé01?@NO]^lm{|M¢J
C¢@
63
sequential_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ç
G__inference_sequential_7_layer_call_and_return_conditional_losses_32617|01?@NO]^lm{|A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ì
G__inference_sequential_7_layer_call_and_return_conditional_losses_32952èé01?@NO]^lm{|A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 «
,__inference_sequential_7_layer_call_fn_32104{01?@NO]^lm{|M¢J
C¢@
63
sequential_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@¯
,__inference_sequential_7_layer_call_fn_32339èé01?@NO]^lm{|M¢J
C¢@
63
sequential_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
,__inference_sequential_7_layer_call_fn_32513o01?@NO]^lm{|A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@£
,__inference_sequential_7_layer_call_fn_32550sèé01?@NO]^lm{|A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ê
#__inference_signature_wrapper_32480¢01?@NO]^lm{|[¢X
¢ 
QªN
L
sequential_4_input63
sequential_4_inputÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ@