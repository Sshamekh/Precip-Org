��8
��
.
Abs
x"T
y"T"
Ttype:

2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
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
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��2
�
Adam/dense_245/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_245/bias/v
|
)Adam/dense_245/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_245/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_245/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_245/kernel/v
�
+Adam/dense_245/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_245/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_244/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_244/bias/v
|
)Adam/dense_244/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_244/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_244/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_244/kernel/v
�
+Adam/dense_244/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_244/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_243/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_243/bias/v
|
)Adam/dense_243/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_243/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_243/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_243/kernel/v
�
+Adam/dense_243/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_243/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_242/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_242/bias/v
|
)Adam/dense_242/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_242/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_242/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_242/kernel/v
�
+Adam/dense_242/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_242/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_241/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_241/bias/v
|
)Adam/dense_241/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_241/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_241/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*(
shared_nameAdam/dense_241/kernel/v
�
+Adam/dense_241/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_241/kernel/v*
_output_shapes
:	@�*
dtype0
�
Adam/dense_240/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_240/bias/v
{
)Adam/dense_240/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_240/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_240/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_240/kernel/v
�
+Adam/dense_240/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_240/kernel/v*
_output_shapes

:@*
dtype0
|
Adam/precip/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/precip/bias/v
u
&Adam/precip/bias/v/Read/ReadVariableOpReadVariableOpAdam/precip/bias/v*
_output_shapes
:*
dtype0
�
Adam/precip/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/precip/kernel/v
}
(Adam/precip/kernel/v/Read/ReadVariableOpReadVariableOpAdam/precip/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_251/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_251/bias/v
{
)Adam/dense_251/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_251/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_251/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*(
shared_nameAdam/dense_251/kernel/v
�
+Adam/dense_251/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_251/kernel/v*
_output_shapes
:	�@*
dtype0
�
Adam/dense_250/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_250/bias/v
|
)Adam/dense_250/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_250/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_250/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_250/kernel/v
�
+Adam/dense_250/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_250/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_249/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_249/bias/v
|
)Adam/dense_249/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_249/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_249/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_249/kernel/v
�
+Adam/dense_249/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_249/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_248/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_248/bias/v
|
)Adam/dense_248/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_248/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_248/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_248/kernel/v
�
+Adam/dense_248/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_248/kernel/v*
_output_shapes
:	�*
dtype0
z
Adam/xmean/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/xmean/bias/v
s
%Adam/xmean/bias/v/Read/ReadVariableOpReadVariableOpAdam/xmean/bias/v*
_output_shapes
:*
dtype0
�
Adam/xmean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/xmean/kernel/v
|
'Adam/xmean/kernel/v/Read/ReadVariableOpReadVariableOpAdam/xmean/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_62/kernel/v
�
+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_61/bias/v
{
)Adam/conv2d_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_61/kernel/v
�
+Adam/conv2d_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_60/bias/v
{
)Adam/conv2d_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_60/kernel/v
�
+Adam/conv2d_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/dense_245/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_245/bias/m
|
)Adam/dense_245/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_245/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_245/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_245/kernel/m
�
+Adam/dense_245/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_245/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_244/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_244/bias/m
|
)Adam/dense_244/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_244/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_244/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_244/kernel/m
�
+Adam/dense_244/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_244/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_243/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_243/bias/m
|
)Adam/dense_243/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_243/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_243/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_243/kernel/m
�
+Adam/dense_243/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_243/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_242/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_242/bias/m
|
)Adam/dense_242/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_242/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_242/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_242/kernel/m
�
+Adam/dense_242/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_242/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_241/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_241/bias/m
|
)Adam/dense_241/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_241/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_241/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*(
shared_nameAdam/dense_241/kernel/m
�
+Adam/dense_241/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_241/kernel/m*
_output_shapes
:	@�*
dtype0
�
Adam/dense_240/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_240/bias/m
{
)Adam/dense_240/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_240/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_240/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_240/kernel/m
�
+Adam/dense_240/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_240/kernel/m*
_output_shapes

:@*
dtype0
|
Adam/precip/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/precip/bias/m
u
&Adam/precip/bias/m/Read/ReadVariableOpReadVariableOpAdam/precip/bias/m*
_output_shapes
:*
dtype0
�
Adam/precip/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/precip/kernel/m
}
(Adam/precip/kernel/m/Read/ReadVariableOpReadVariableOpAdam/precip/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_251/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_251/bias/m
{
)Adam/dense_251/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_251/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_251/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*(
shared_nameAdam/dense_251/kernel/m
�
+Adam/dense_251/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_251/kernel/m*
_output_shapes
:	�@*
dtype0
�
Adam/dense_250/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_250/bias/m
|
)Adam/dense_250/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_250/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_250/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_250/kernel/m
�
+Adam/dense_250/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_250/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_249/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_249/bias/m
|
)Adam/dense_249/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_249/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_249/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_249/kernel/m
�
+Adam/dense_249/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_249/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_248/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_248/bias/m
|
)Adam/dense_248/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_248/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_248/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_248/kernel/m
�
+Adam/dense_248/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_248/kernel/m*
_output_shapes
:	�*
dtype0
z
Adam/xmean/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/xmean/bias/m
s
%Adam/xmean/bias/m/Read/ReadVariableOpReadVariableOpAdam/xmean/bias/m*
_output_shapes
:*
dtype0
�
Adam/xmean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/xmean/kernel/m
|
'Adam/xmean/kernel/m/Read/ReadVariableOpReadVariableOpAdam/xmean/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_62/kernel/m
�
+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_61/bias/m
{
)Adam/conv2d_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_61/kernel/m
�
+Adam/conv2d_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_60/bias/m
{
)Adam/conv2d_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_60/kernel/m
�
+Adam/conv2d_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/m*&
_output_shapes
:*
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
x
rotationloss/countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namerotationloss/count
q
&rotationloss/count/Read/ReadVariableOpReadVariableOprotationloss/count*
_output_shapes
: *
dtype0
x
rotationloss/totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namerotationloss/total
q
&rotationloss/total/Read/ReadVariableOpReadVariableOprotationloss/total*
_output_shapes
: *
dtype0
|
rotationloss/count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namerotationloss/count_1
u
(rotationloss/count_1/Read/ReadVariableOpReadVariableOprotationloss/count_1*
_output_shapes
: *
dtype0
|
rotationloss/total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namerotationloss/total_1
u
(rotationloss/total_1/Read/ReadVariableOpReadVariableOprotationloss/total_1*
_output_shapes
: *
dtype0
n
hr_loss/countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namehr_loss/count
g
!hr_loss/count/Read/ReadVariableOpReadVariableOphr_loss/count*
_output_shapes
: *
dtype0
n
hr_loss/totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namehr_loss/total
g
!hr_loss/total/Read/ReadVariableOpReadVariableOphr_loss/total*
_output_shapes
: *
dtype0
v
precip_loss/countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameprecip_loss/count
o
%precip_loss/count/Read/ReadVariableOpReadVariableOpprecip_loss/count*
_output_shapes
: *
dtype0
v
precip_loss/totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameprecip_loss/total
o
%precip_loss/total/Read/ReadVariableOpReadVariableOpprecip_loss/total*
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
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
u
dense_245/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_245/bias
n
"dense_245/bias/Read/ReadVariableOpReadVariableOpdense_245/bias*
_output_shapes	
:�*
dtype0
~
dense_245/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namedense_245/kernel
w
$dense_245/kernel/Read/ReadVariableOpReadVariableOpdense_245/kernel* 
_output_shapes
:
��*
dtype0
u
dense_244/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_244/bias
n
"dense_244/bias/Read/ReadVariableOpReadVariableOpdense_244/bias*
_output_shapes	
:�*
dtype0
~
dense_244/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namedense_244/kernel
w
$dense_244/kernel/Read/ReadVariableOpReadVariableOpdense_244/kernel* 
_output_shapes
:
��*
dtype0
u
dense_243/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_243/bias
n
"dense_243/bias/Read/ReadVariableOpReadVariableOpdense_243/bias*
_output_shapes	
:�*
dtype0
~
dense_243/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namedense_243/kernel
w
$dense_243/kernel/Read/ReadVariableOpReadVariableOpdense_243/kernel* 
_output_shapes
:
��*
dtype0
u
dense_242/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_242/bias
n
"dense_242/bias/Read/ReadVariableOpReadVariableOpdense_242/bias*
_output_shapes	
:�*
dtype0
~
dense_242/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namedense_242/kernel
w
$dense_242/kernel/Read/ReadVariableOpReadVariableOpdense_242/kernel* 
_output_shapes
:
��*
dtype0
u
dense_241/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_241/bias
n
"dense_241/bias/Read/ReadVariableOpReadVariableOpdense_241/bias*
_output_shapes	
:�*
dtype0
}
dense_241/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*!
shared_namedense_241/kernel
v
$dense_241/kernel/Read/ReadVariableOpReadVariableOpdense_241/kernel*
_output_shapes
:	@�*
dtype0
t
dense_240/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_240/bias
m
"dense_240/bias/Read/ReadVariableOpReadVariableOpdense_240/bias*
_output_shapes
:@*
dtype0
|
dense_240/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_240/kernel
u
$dense_240/kernel/Read/ReadVariableOpReadVariableOpdense_240/kernel*
_output_shapes

:@*
dtype0
n
precip/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameprecip/bias
g
precip/bias/Read/ReadVariableOpReadVariableOpprecip/bias*
_output_shapes
:*
dtype0
v
precip/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_nameprecip/kernel
o
!precip/kernel/Read/ReadVariableOpReadVariableOpprecip/kernel*
_output_shapes

:@*
dtype0
t
dense_251/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_251/bias
m
"dense_251/bias/Read/ReadVariableOpReadVariableOpdense_251/bias*
_output_shapes
:@*
dtype0
}
dense_251/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*!
shared_namedense_251/kernel
v
$dense_251/kernel/Read/ReadVariableOpReadVariableOpdense_251/kernel*
_output_shapes
:	�@*
dtype0
u
dense_250/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_250/bias
n
"dense_250/bias/Read/ReadVariableOpReadVariableOpdense_250/bias*
_output_shapes	
:�*
dtype0
~
dense_250/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namedense_250/kernel
w
$dense_250/kernel/Read/ReadVariableOpReadVariableOpdense_250/kernel* 
_output_shapes
:
��*
dtype0
u
dense_249/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_249/bias
n
"dense_249/bias/Read/ReadVariableOpReadVariableOpdense_249/bias*
_output_shapes	
:�*
dtype0
~
dense_249/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namedense_249/kernel
w
$dense_249/kernel/Read/ReadVariableOpReadVariableOpdense_249/kernel* 
_output_shapes
:
��*
dtype0
u
dense_248/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_248/bias
n
"dense_248/bias/Read/ReadVariableOpReadVariableOpdense_248/bias*
_output_shapes	
:�*
dtype0
}
dense_248/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namedense_248/kernel
v
$dense_248/kernel/Read/ReadVariableOpReadVariableOpdense_248/kernel*
_output_shapes
:	�*
dtype0
l

xmean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
xmean/bias
e
xmean/bias/Read/ReadVariableOpReadVariableOp
xmean/bias*
_output_shapes
:*
dtype0
u
xmean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namexmean/kernel
n
 xmean/kernel/Read/ReadVariableOpReadVariableOpxmean/kernel*
_output_shapes
:	�*
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:*
dtype0
�
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
:*
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
:*
dtype0
�
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
:*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:*
dtype0
�
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
�
)layer-0
*layer-1
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
�
1layer-0
2layer_with_weights-0
2layer-1
3layer_with_weights-1
3layer-2
4layer_with_weights-2
4layer-3
5layer_with_weights-3
5layer-4
6layer_with_weights-4
6layer-5
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
* 
�
=layer-0
>layer_with_weights-0
>layer-1
?layer_with_weights-1
?layer-2
@layer_with_weights-2
@layer-3
Alayer_with_weights-3
Alayer-4
Blayer_with_weights-4
Blayer-5
Clayer_with_weights-5
Clayer-6
Dlayer-7
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*
�
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11
i12
j13
k14
l15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29*
�
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11
i12
j13
k14
l15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29*
* 
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�beta_1
�beta_2

�decay
�learning_rate
	�iter]m�^m�_m�`m�am�bm�cm�dm�em�fm�gm�hm�im�jm�km�lm�mm�nm�om�pm�qm�rm�sm�tm�um�vm�wm�xm�ym�zm�]v�^v�_v�`v�av�bv�cv�dv�ev�fv�gv�hv�iv�jv�kv�lv�mv�nv�ov�pv�qv�rv�sv�tv�uv�vv�wv�xv�yv�zv�*
* 

�serving_default* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

_kernel
`bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

akernel
bbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ckernel
dbias*
<
]0
^1
_2
`3
a4
b5
c6
d7*
<
]0
^1
_2
`3
a4
b5
c6
d7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ekernel
fbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

gkernel
hbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ikernel
jbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kkernel
lbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

mkernel
nbias*
J
e0
f1
g2
h3
i4
j5
k6
l7
m8
n9*
J
e0
f1
g2
h3
i4
j5
k6
l7
m8
n9*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

�_init_input_shape* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

okernel
pbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ukernel
vbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

wkernel
xbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ykernel
zbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
Z
o0
p1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11*
Z
o0
p1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
PJ
VARIABLE_VALUEconv2d_60/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_60/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_61/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_61/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_62/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_62/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUExmean/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
xmean/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_248/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_248/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_249/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_249/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_250/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_250/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_251/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_251/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEprecip/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEprecip/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_240/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_240/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_241/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_241/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_242/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_242/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_243/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_243/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_244/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_244/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_245/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_245/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
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
10*
,
�0
�1
�2
�3
�4*
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
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

_0
`1*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

a0
b1*

a0
b1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

c0
d1*

c0
d1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
5
0
1
2
3
4
5
6*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 

)0
*1*
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

e0
f1*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

g0
h1*

g0
h1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

i0
j1*

i0
j1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

k0
l1*

k0
l1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

m0
n1*

m0
n1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
.
10
21
32
43
54
65*
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

o0
p1*

o0
p1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

q0
r1*

q0
r1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

s0
t1*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

u0
v1*

u0
v1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

w0
x1*

w0
x1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

y0
z1*

y0
z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
<
=0
>1
?2
@3
A4
B5
C6
D7*
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

�0*
* 

�precip_lossmse*
* 
* 
* 
* 

�0*
* 

�
hr_lossmse*
* 
* 
* 
* 

�0
�1*
* 
&
�rotationloss
�mean_org*
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
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

�
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
�
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

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
_Y
VARIABLE_VALUEprecip_loss/total4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEprecip_loss/count4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
[U
VARIABLE_VALUEhr_loss/total4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEhr_loss/count4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
b\
VARIABLE_VALUErotationloss/total_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUErotationloss/count_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
`Z
VARIABLE_VALUErotationloss/total4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUErotationloss/count4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE
StateVar_1Rlayer-4/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-4/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_60/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_60/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_61/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_61/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_62/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_62/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/xmean/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/xmean/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_248/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_248/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_249/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_249/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_250/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_250/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_251/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_251/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/precip/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/precip/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_240/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_240/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_241/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_241/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_242/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_242/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_243/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_243/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_244/kernel/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_244/bias/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_245/kernel/mCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_245/bias/mCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_60/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_60/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_61/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_61/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_62/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_62/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/xmean/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/xmean/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/dense_248/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_248/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_249/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_249/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_250/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_250/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_251/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_251/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/precip/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/precip/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_240/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_240/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_241/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_241/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_242/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_242/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_243/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_243/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_244/kernel/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_244/bias/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/dense_245/kernel/vCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_245/bias/vCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_158Placeholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
|
serving_default_input_159Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
|
serving_default_input_160Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_158serving_default_input_159serving_default_input_160conv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasxmean/kernel
xmean/biasdense_240/kerneldense_240/biasdense_241/kerneldense_241/biasdense_242/kerneldense_242/biasdense_243/kerneldense_243/biasdense_244/kerneldense_244/biasdense_245/kerneldense_245/biasdense_248/kerneldense_248/biasdense_249/kerneldense_249/biasdense_250/kerneldense_250/biasdense_251/kerneldense_251/biasprecip/kernelprecip/biasrotationloss/total_1rotationloss/count_1rotationloss/totalrotationloss/counthr_loss/totalhr_loss/countprecip_loss/totalprecip_loss/count*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������  :���������: *@
_read_only_resource_inputs"
 	
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_13765925
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp xmean/kernel/Read/ReadVariableOpxmean/bias/Read/ReadVariableOp$dense_248/kernel/Read/ReadVariableOp"dense_248/bias/Read/ReadVariableOp$dense_249/kernel/Read/ReadVariableOp"dense_249/bias/Read/ReadVariableOp$dense_250/kernel/Read/ReadVariableOp"dense_250/bias/Read/ReadVariableOp$dense_251/kernel/Read/ReadVariableOp"dense_251/bias/Read/ReadVariableOp!precip/kernel/Read/ReadVariableOpprecip/bias/Read/ReadVariableOp$dense_240/kernel/Read/ReadVariableOp"dense_240/bias/Read/ReadVariableOp$dense_241/kernel/Read/ReadVariableOp"dense_241/bias/Read/ReadVariableOp$dense_242/kernel/Read/ReadVariableOp"dense_242/bias/Read/ReadVariableOp$dense_243/kernel/Read/ReadVariableOp"dense_243/bias/Read/ReadVariableOp$dense_244/kernel/Read/ReadVariableOp"dense_244/bias/Read/ReadVariableOp$dense_245/kernel/Read/ReadVariableOp"dense_245/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp%precip_loss/total/Read/ReadVariableOp%precip_loss/count/Read/ReadVariableOp!hr_loss/total/Read/ReadVariableOp!hr_loss/count/Read/ReadVariableOp(rotationloss/total_1/Read/ReadVariableOp(rotationloss/count_1/Read/ReadVariableOp&rotationloss/total/Read/ReadVariableOp&rotationloss/count/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp+Adam/conv2d_60/kernel/m/Read/ReadVariableOp)Adam/conv2d_60/bias/m/Read/ReadVariableOp+Adam/conv2d_61/kernel/m/Read/ReadVariableOp)Adam/conv2d_61/bias/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp'Adam/xmean/kernel/m/Read/ReadVariableOp%Adam/xmean/bias/m/Read/ReadVariableOp+Adam/dense_248/kernel/m/Read/ReadVariableOp)Adam/dense_248/bias/m/Read/ReadVariableOp+Adam/dense_249/kernel/m/Read/ReadVariableOp)Adam/dense_249/bias/m/Read/ReadVariableOp+Adam/dense_250/kernel/m/Read/ReadVariableOp)Adam/dense_250/bias/m/Read/ReadVariableOp+Adam/dense_251/kernel/m/Read/ReadVariableOp)Adam/dense_251/bias/m/Read/ReadVariableOp(Adam/precip/kernel/m/Read/ReadVariableOp&Adam/precip/bias/m/Read/ReadVariableOp+Adam/dense_240/kernel/m/Read/ReadVariableOp)Adam/dense_240/bias/m/Read/ReadVariableOp+Adam/dense_241/kernel/m/Read/ReadVariableOp)Adam/dense_241/bias/m/Read/ReadVariableOp+Adam/dense_242/kernel/m/Read/ReadVariableOp)Adam/dense_242/bias/m/Read/ReadVariableOp+Adam/dense_243/kernel/m/Read/ReadVariableOp)Adam/dense_243/bias/m/Read/ReadVariableOp+Adam/dense_244/kernel/m/Read/ReadVariableOp)Adam/dense_244/bias/m/Read/ReadVariableOp+Adam/dense_245/kernel/m/Read/ReadVariableOp)Adam/dense_245/bias/m/Read/ReadVariableOp+Adam/conv2d_60/kernel/v/Read/ReadVariableOp)Adam/conv2d_60/bias/v/Read/ReadVariableOp+Adam/conv2d_61/kernel/v/Read/ReadVariableOp)Adam/conv2d_61/bias/v/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp'Adam/xmean/kernel/v/Read/ReadVariableOp%Adam/xmean/bias/v/Read/ReadVariableOp+Adam/dense_248/kernel/v/Read/ReadVariableOp)Adam/dense_248/bias/v/Read/ReadVariableOp+Adam/dense_249/kernel/v/Read/ReadVariableOp)Adam/dense_249/bias/v/Read/ReadVariableOp+Adam/dense_250/kernel/v/Read/ReadVariableOp)Adam/dense_250/bias/v/Read/ReadVariableOp+Adam/dense_251/kernel/v/Read/ReadVariableOp)Adam/dense_251/bias/v/Read/ReadVariableOp(Adam/precip/kernel/v/Read/ReadVariableOp&Adam/precip/bias/v/Read/ReadVariableOp+Adam/dense_240/kernel/v/Read/ReadVariableOp)Adam/dense_240/bias/v/Read/ReadVariableOp+Adam/dense_241/kernel/v/Read/ReadVariableOp)Adam/dense_241/bias/v/Read/ReadVariableOp+Adam/dense_242/kernel/v/Read/ReadVariableOp)Adam/dense_242/bias/v/Read/ReadVariableOp+Adam/dense_243/kernel/v/Read/ReadVariableOp)Adam/dense_243/bias/v/Read/ReadVariableOp+Adam/dense_244/kernel/v/Read/ReadVariableOp)Adam/dense_244/bias/v/Read/ReadVariableOp+Adam/dense_245/kernel/v/Read/ReadVariableOp)Adam/dense_245/bias/v/Read/ReadVariableOpConst*x
Tinq
o2m			*
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
GPU 2J 8� **
f%R#
!__inference__traced_save_13768987
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasxmean/kernel
xmean/biasdense_248/kerneldense_248/biasdense_249/kerneldense_249/biasdense_250/kerneldense_250/biasdense_251/kerneldense_251/biasprecip/kernelprecip/biasdense_240/kerneldense_240/biasdense_241/kerneldense_241/biasdense_242/kerneldense_242/biasdense_243/kerneldense_243/biasdense_244/kerneldense_244/biasdense_245/kerneldense_245/biasbeta_1beta_2decaylearning_rate	Adam/itertotalcountprecip_loss/totalprecip_loss/counthr_loss/totalhr_loss/countrotationloss/total_1rotationloss/count_1rotationloss/totalrotationloss/count
StateVar_1StateVarAdam/conv2d_60/kernel/mAdam/conv2d_60/bias/mAdam/conv2d_61/kernel/mAdam/conv2d_61/bias/mAdam/conv2d_62/kernel/mAdam/conv2d_62/bias/mAdam/xmean/kernel/mAdam/xmean/bias/mAdam/dense_248/kernel/mAdam/dense_248/bias/mAdam/dense_249/kernel/mAdam/dense_249/bias/mAdam/dense_250/kernel/mAdam/dense_250/bias/mAdam/dense_251/kernel/mAdam/dense_251/bias/mAdam/precip/kernel/mAdam/precip/bias/mAdam/dense_240/kernel/mAdam/dense_240/bias/mAdam/dense_241/kernel/mAdam/dense_241/bias/mAdam/dense_242/kernel/mAdam/dense_242/bias/mAdam/dense_243/kernel/mAdam/dense_243/bias/mAdam/dense_244/kernel/mAdam/dense_244/bias/mAdam/dense_245/kernel/mAdam/dense_245/bias/mAdam/conv2d_60/kernel/vAdam/conv2d_60/bias/vAdam/conv2d_61/kernel/vAdam/conv2d_61/bias/vAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/vAdam/xmean/kernel/vAdam/xmean/bias/vAdam/dense_248/kernel/vAdam/dense_248/bias/vAdam/dense_249/kernel/vAdam/dense_249/bias/vAdam/dense_250/kernel/vAdam/dense_250/bias/vAdam/dense_251/kernel/vAdam/dense_251/bias/vAdam/precip/kernel/vAdam/precip/bias/vAdam/dense_240/kernel/vAdam/dense_240/bias/vAdam/dense_241/kernel/vAdam/dense_241/bias/vAdam/dense_242/kernel/vAdam/dense_242/bias/vAdam/dense_243/kernel/vAdam/dense_243/bias/vAdam/dense_244/kernel/vAdam/dense_244/bias/vAdam/dense_245/kernel/vAdam/dense_245/bias/v*w
Tinp
n2l*
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
GPU 2J 8� *-
f(R&
$__inference__traced_restore_13769318��.
�
�
1__inference_random_flip_40_layer_call_fn_13768057

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13764017w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
؜
�B
$__inference__traced_restore_13769318
file_prefix;
!assignvariableop_conv2d_60_kernel:/
!assignvariableop_1_conv2d_60_bias:=
#assignvariableop_2_conv2d_61_kernel:/
!assignvariableop_3_conv2d_61_bias:=
#assignvariableop_4_conv2d_62_kernel:/
!assignvariableop_5_conv2d_62_bias:2
assignvariableop_6_xmean_kernel:	�+
assignvariableop_7_xmean_bias:6
#assignvariableop_8_dense_248_kernel:	�0
!assignvariableop_9_dense_248_bias:	�8
$assignvariableop_10_dense_249_kernel:
��1
"assignvariableop_11_dense_249_bias:	�8
$assignvariableop_12_dense_250_kernel:
��1
"assignvariableop_13_dense_250_bias:	�7
$assignvariableop_14_dense_251_kernel:	�@0
"assignvariableop_15_dense_251_bias:@3
!assignvariableop_16_precip_kernel:@-
assignvariableop_17_precip_bias:6
$assignvariableop_18_dense_240_kernel:@0
"assignvariableop_19_dense_240_bias:@7
$assignvariableop_20_dense_241_kernel:	@�1
"assignvariableop_21_dense_241_bias:	�8
$assignvariableop_22_dense_242_kernel:
��1
"assignvariableop_23_dense_242_bias:	�8
$assignvariableop_24_dense_243_kernel:
��1
"assignvariableop_25_dense_243_bias:	�8
$assignvariableop_26_dense_244_kernel:
��1
"assignvariableop_27_dense_244_bias:	�8
$assignvariableop_28_dense_245_kernel:
��1
"assignvariableop_29_dense_245_bias:	�$
assignvariableop_30_beta_1: $
assignvariableop_31_beta_2: #
assignvariableop_32_decay: +
!assignvariableop_33_learning_rate: '
assignvariableop_34_adam_iter:	 #
assignvariableop_35_total: #
assignvariableop_36_count: /
%assignvariableop_37_precip_loss_total: /
%assignvariableop_38_precip_loss_count: +
!assignvariableop_39_hr_loss_total: +
!assignvariableop_40_hr_loss_count: 2
(assignvariableop_41_rotationloss_total_1: 2
(assignvariableop_42_rotationloss_count_1: 0
&assignvariableop_43_rotationloss_total: 0
&assignvariableop_44_rotationloss_count: ,
assignvariableop_45_statevar_1:	*
assignvariableop_46_statevar:	E
+assignvariableop_47_adam_conv2d_60_kernel_m:7
)assignvariableop_48_adam_conv2d_60_bias_m:E
+assignvariableop_49_adam_conv2d_61_kernel_m:7
)assignvariableop_50_adam_conv2d_61_bias_m:E
+assignvariableop_51_adam_conv2d_62_kernel_m:7
)assignvariableop_52_adam_conv2d_62_bias_m::
'assignvariableop_53_adam_xmean_kernel_m:	�3
%assignvariableop_54_adam_xmean_bias_m:>
+assignvariableop_55_adam_dense_248_kernel_m:	�8
)assignvariableop_56_adam_dense_248_bias_m:	�?
+assignvariableop_57_adam_dense_249_kernel_m:
��8
)assignvariableop_58_adam_dense_249_bias_m:	�?
+assignvariableop_59_adam_dense_250_kernel_m:
��8
)assignvariableop_60_adam_dense_250_bias_m:	�>
+assignvariableop_61_adam_dense_251_kernel_m:	�@7
)assignvariableop_62_adam_dense_251_bias_m:@:
(assignvariableop_63_adam_precip_kernel_m:@4
&assignvariableop_64_adam_precip_bias_m:=
+assignvariableop_65_adam_dense_240_kernel_m:@7
)assignvariableop_66_adam_dense_240_bias_m:@>
+assignvariableop_67_adam_dense_241_kernel_m:	@�8
)assignvariableop_68_adam_dense_241_bias_m:	�?
+assignvariableop_69_adam_dense_242_kernel_m:
��8
)assignvariableop_70_adam_dense_242_bias_m:	�?
+assignvariableop_71_adam_dense_243_kernel_m:
��8
)assignvariableop_72_adam_dense_243_bias_m:	�?
+assignvariableop_73_adam_dense_244_kernel_m:
��8
)assignvariableop_74_adam_dense_244_bias_m:	�?
+assignvariableop_75_adam_dense_245_kernel_m:
��8
)assignvariableop_76_adam_dense_245_bias_m:	�E
+assignvariableop_77_adam_conv2d_60_kernel_v:7
)assignvariableop_78_adam_conv2d_60_bias_v:E
+assignvariableop_79_adam_conv2d_61_kernel_v:7
)assignvariableop_80_adam_conv2d_61_bias_v:E
+assignvariableop_81_adam_conv2d_62_kernel_v:7
)assignvariableop_82_adam_conv2d_62_bias_v::
'assignvariableop_83_adam_xmean_kernel_v:	�3
%assignvariableop_84_adam_xmean_bias_v:>
+assignvariableop_85_adam_dense_248_kernel_v:	�8
)assignvariableop_86_adam_dense_248_bias_v:	�?
+assignvariableop_87_adam_dense_249_kernel_v:
��8
)assignvariableop_88_adam_dense_249_bias_v:	�?
+assignvariableop_89_adam_dense_250_kernel_v:
��8
)assignvariableop_90_adam_dense_250_bias_v:	�>
+assignvariableop_91_adam_dense_251_kernel_v:	�@7
)assignvariableop_92_adam_dense_251_bias_v:@:
(assignvariableop_93_adam_precip_kernel_v:@4
&assignvariableop_94_adam_precip_bias_v:=
+assignvariableop_95_adam_dense_240_kernel_v:@7
)assignvariableop_96_adam_dense_240_bias_v:@>
+assignvariableop_97_adam_dense_241_kernel_v:	@�8
)assignvariableop_98_adam_dense_241_bias_v:	�?
+assignvariableop_99_adam_dense_242_kernel_v:
��9
*assignvariableop_100_adam_dense_242_bias_v:	�@
,assignvariableop_101_adam_dense_243_kernel_v:
��9
*assignvariableop_102_adam_dense_243_bias_v:	�@
,assignvariableop_103_adam_dense_244_kernel_v:
��9
*assignvariableop_104_adam_dense_244_bias_v:	�@
,assignvariableop_105_adam_dense_245_kernel_v:
��9
*assignvariableop_106_adam_dense_245_bias_v:	�
identity_108��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�2
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:l*
dtype0*�1
value�1B�1lB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-4/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-4/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:l*
dtype0*�
value�B�lB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*z
dtypesp
n2l			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_61_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_61_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_xmean_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_xmean_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_248_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_248_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_249_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_249_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_dense_250_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_250_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp$assignvariableop_14_dense_251_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_251_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp!assignvariableop_16_precip_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_precip_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_240_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_240_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp$assignvariableop_20_dense_241_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_241_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp$assignvariableop_22_dense_242_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp"assignvariableop_23_dense_242_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_243_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_243_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp$assignvariableop_26_dense_244_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp"assignvariableop_27_dense_244_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp$assignvariableop_28_dense_245_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp"assignvariableop_29_dense_245_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_beta_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_beta_2Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_decayIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp!assignvariableop_33_learning_rateIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp%assignvariableop_37_precip_loss_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp%assignvariableop_38_precip_loss_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp!assignvariableop_39_hr_loss_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp!assignvariableop_40_hr_loss_countIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_rotationloss_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_rotationloss_count_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp&assignvariableop_43_rotationloss_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_rotationloss_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpassignvariableop_45_statevar_1Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_statevarIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_60_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_60_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_61_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_61_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_62_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_62_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_xmean_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp%assignvariableop_54_adam_xmean_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_dense_248_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_dense_248_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_dense_249_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_249_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_dense_250_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_dense_250_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_dense_251_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_dense_251_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_precip_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp&assignvariableop_64_adam_precip_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_dense_240_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_dense_240_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_dense_241_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_dense_241_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_dense_242_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_dense_242_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_dense_243_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_dense_243_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_dense_244_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_dense_244_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_dense_245_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_dense_245_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv2d_60_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_conv2d_60_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_61_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_61_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_conv2d_62_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp)assignvariableop_82_adam_conv2d_62_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp'assignvariableop_83_adam_xmean_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp%assignvariableop_84_adam_xmean_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_dense_248_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp)assignvariableop_86_adam_dense_248_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_dense_249_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_dense_249_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp+assignvariableop_89_adam_dense_250_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp)assignvariableop_90_adam_dense_250_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp+assignvariableop_91_adam_dense_251_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_dense_251_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp(assignvariableop_93_adam_precip_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp&assignvariableop_94_adam_precip_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_dense_240_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_dense_240_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp+assignvariableop_97_adam_dense_241_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_dense_241_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp+assignvariableop_99_adam_dense_242_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp*assignvariableop_100_adam_dense_242_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp,assignvariableop_101_adam_dense_243_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp*assignvariableop_102_adam_dense_243_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_dense_244_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_dense_244_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_dense_245_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_dense_245_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_107Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_108IdentityIdentity_107:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_108Identity_108:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062*
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
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
Usequential_20_random_flip_40_map_while_stateless_random_flip_left_right_true_13766509�
�sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_reversev2_sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_20_random_flip_40_map_while_stateless_random_flip_left_right_identity�
Vsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Qsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_reversev2_sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_control_dependency_sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
Psequential_20/random_flip_40/map/while/stateless_random_flip_left_right/IdentityIdentityZsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
Psequential_20_random_flip_40_map_while_stateless_random_flip_left_right_identityYsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
6map_while_stateless_random_flip_up_down_false_13763813o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

�
G__inference_dense_244_layer_call_and_return_conditional_losses_13768592

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768219

inputs
map_while_input_6:	
identity��	map/while?
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
valueB:�
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
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
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
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *#
bodyR
map_while_body_13768077*#
condR
map_while_cond_13768076*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*/
_output_shapes
:���������  R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2
	map/while	map/while:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�B
�
F__inference_model_35_layer_call_and_return_conditional_losses_13765830
	input_158
	input_159
	input_160+
model_34_13765724:
model_34_13765726:+
model_34_13765728:
model_34_13765730:+
model_34_13765732:
model_34_13765734:$
model_34_13765736:	�
model_34_13765738:$
sequential_20_13765741:	$
sequential_20_13765743:	"
reconst_13765756:@
reconst_13765758:@#
reconst_13765760:	@�
reconst_13765762:	�$
reconst_13765764:
��
reconst_13765766:	�$
reconst_13765768:
��
reconst_13765770:	�$
reconst_13765772:
��
reconst_13765774:	�$
reconst_13765776:
��
reconst_13765778:	�"
precip_13765781:	�
precip_13765783:	�#
precip_13765785:
��
precip_13765787:	�#
precip_13765789:
��
precip_13765791:	�"
precip_13765793:	�@
precip_13765795:@!
precip_13765797:@
precip_13765799:
rotationloss_13765802: 
rotationloss_13765804: 
rotationloss_13765806: 
rotationloss_13765808: 
hr_loss_13765812: 
hr_loss_13765814: 
precip_loss_13765818: 
precip_loss_13765820: 
identity

identity_1

identity_2

identity_3

identity_4

identity_5��hr_loss/StatefulPartitionedCall� model_34/StatefulPartitionedCall�"model_34/StatefulPartitionedCall_1�precip/StatefulPartitionedCall�#precip_loss/StatefulPartitionedCall�reconst/StatefulPartitionedCall�$rotationloss/StatefulPartitionedCall�%sequential_20/StatefulPartitionedCall�
 model_34/StatefulPartitionedCallStatefulPartitionedCall	input_158model_34_13765724model_34_13765726model_34_13765728model_34_13765730model_34_13765732model_34_13765734model_34_13765736model_34_13765738*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763565�
%sequential_20/StatefulPartitionedCallStatefulPartitionedCall	input_158sequential_20_13765741sequential_20_13765743*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764039�
concatenate_18/PartitionedCallPartitionedCall)model_34/StatefulPartitionedCall:output:0	input_159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13764843�
"model_34/StatefulPartitionedCall_1StatefulPartitionedCall.sequential_20/StatefulPartitionedCall:output:0model_34_13765724model_34_13765726model_34_13765728model_34_13765730model_34_13765732model_34_13765734model_34_13765736model_34_13765738*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763565�
reconst/StatefulPartitionedCallStatefulPartitionedCall)model_34/StatefulPartitionedCall:output:0reconst_13765756reconst_13765758reconst_13765760reconst_13765762reconst_13765764reconst_13765766reconst_13765768reconst_13765770reconst_13765772reconst_13765774reconst_13765776reconst_13765778*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764681�
precip/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0precip_13765781precip_13765783precip_13765785precip_13765787precip_13765789precip_13765791precip_13765793precip_13765795precip_13765797precip_13765799*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764292�
$rotationloss/StatefulPartitionedCallStatefulPartitionedCall+model_34/StatefulPartitionedCall_1:output:0)model_34/StatefulPartitionedCall:output:0rotationloss_13765802rotationloss_13765804rotationloss_13765806rotationloss_13765808*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_rotationloss_layer_call_and_return_conditional_losses_13764955�
hr_loss/StatefulPartitionedCallStatefulPartitionedCall(reconst/StatefulPartitionedCall:output:0	input_158hr_loss_13765812hr_loss_13765814*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������  : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hr_loss_layer_call_and_return_conditional_losses_13765019�
#precip_loss/StatefulPartitionedCallStatefulPartitionedCall'precip/StatefulPartitionedCall:output:0	input_160precip_loss_13765818precip_loss_13765820*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_precip_loss_layer_call_and_return_conditional_losses_13765077{
IdentityIdentity,precip_loss/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}

Identity_1Identity(hr_loss/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  m

Identity_2Identity-rotationloss/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: l

Identity_3Identity,precip_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(hr_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_5Identity-rotationloss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^hr_loss/StatefulPartitionedCall!^model_34/StatefulPartitionedCall#^model_34/StatefulPartitionedCall_1^precip/StatefulPartitionedCall$^precip_loss/StatefulPartitionedCall ^reconst/StatefulPartitionedCall%^rotationloss/StatefulPartitionedCall&^sequential_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
hr_loss/StatefulPartitionedCallhr_loss/StatefulPartitionedCall2D
 model_34/StatefulPartitionedCall model_34/StatefulPartitionedCall2H
"model_34/StatefulPartitionedCall_1"model_34/StatefulPartitionedCall_12@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall2J
#precip_loss/StatefulPartitionedCall#precip_loss/StatefulPartitionedCall2B
reconst/StatefulPartitionedCallreconst/StatefulPartitionedCall2L
$rotationloss/StatefulPartitionedCall$rotationloss/StatefulPartitionedCall2N
%sequential_20/StatefulPartitionedCall%sequential_20/StatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_158:RN
'
_output_shapes
:���������
#
_user_specified_name	input_159:RN
'
_output_shapes
:���������
#
_user_specified_name	input_160
�	
�
+__inference_model_34_layer_call_fn_13767043

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�$
�
E__inference_reconst_layer_call_and_return_conditional_losses_13764522

inputs$
dense_240_13764417:@ 
dense_240_13764419:@%
dense_241_13764434:	@�!
dense_241_13764436:	�&
dense_242_13764451:
��!
dense_242_13764453:	�&
dense_243_13764468:
��!
dense_243_13764470:	�&
dense_244_13764485:
��!
dense_244_13764487:	�&
dense_245_13764501:
��!
dense_245_13764503:	�
identity��!dense_240/StatefulPartitionedCall�!dense_241/StatefulPartitionedCall�!dense_242/StatefulPartitionedCall�!dense_243/StatefulPartitionedCall�!dense_244/StatefulPartitionedCall�!dense_245/StatefulPartitionedCall�
!dense_240/StatefulPartitionedCallStatefulPartitionedCallinputsdense_240_13764417dense_240_13764419*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_240_layer_call_and_return_conditional_losses_13764416�
!dense_241/StatefulPartitionedCallStatefulPartitionedCall*dense_240/StatefulPartitionedCall:output:0dense_241_13764434dense_241_13764436*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_241_layer_call_and_return_conditional_losses_13764433�
!dense_242/StatefulPartitionedCallStatefulPartitionedCall*dense_241/StatefulPartitionedCall:output:0dense_242_13764451dense_242_13764453*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_242_layer_call_and_return_conditional_losses_13764450�
!dense_243/StatefulPartitionedCallStatefulPartitionedCall*dense_242/StatefulPartitionedCall:output:0dense_243_13764468dense_243_13764470*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_243_layer_call_and_return_conditional_losses_13764467�
!dense_244/StatefulPartitionedCallStatefulPartitionedCall*dense_243/StatefulPartitionedCall:output:0dense_244_13764485dense_244_13764487*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_244_layer_call_and_return_conditional_losses_13764484�
!dense_245/StatefulPartitionedCallStatefulPartitionedCall*dense_244/StatefulPartitionedCall:output:0dense_245_13764501dense_245_13764503*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_245_layer_call_and_return_conditional_losses_13764500�
Reconst/PartitionedCallPartitionedCall*dense_245/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Reconst_layer_call_and_return_conditional_losses_13764519s
IdentityIdentity Reconst/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  �
NoOpNoOp"^dense_240/StatefulPartitionedCall"^dense_241/StatefulPartitionedCall"^dense_242/StatefulPartitionedCall"^dense_243/StatefulPartitionedCall"^dense_244/StatefulPartitionedCall"^dense_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2F
!dense_240/StatefulPartitionedCall!dense_240/StatefulPartitionedCall2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2F
!dense_244/StatefulPartitionedCall!dense_244/StatefulPartitionedCall2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
5map_while_stateless_random_flip_up_down_true_13768185p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

�
G__inference_dense_243_layer_call_and_return_conditional_losses_13764467

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Vsequential_20_random_flip_40_map_while_stateless_random_flip_left_right_false_13766510�
�sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_identity_sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_20_random_flip_40_map_while_stateless_random_flip_left_right_identity�
Psequential_20/random_flip_40/map/while/stateless_random_flip_left_right/IdentityIdentity�sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_identity_sequential_20_random_flip_40_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "�
Psequential_20_random_flip_40_map_while_stateless_random_flip_left_right_identityYsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
9map_while_stateless_random_flip_left_right_false_13768137u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13767995

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_dense_250_layer_call_fn_13768442

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_250_layer_call_and_return_conditional_losses_13764123p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�	
&__inference_signature_wrapper_13765925
	input_158
	input_159
	input_160!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:@
	unknown_8:@
	unknown_9:	@�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:
��

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�@

unknown_26:@

unknown_27:@

unknown_28:

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: 

unknown_36: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_158	input_159	input_160unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������  :���������: *@
_read_only_resource_inputs"
 	
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_13763354s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_158:RN
'
_output_shapes
:���������
#
_user_specified_name	input_159:RN
'
_output_shapes
:���������
#
_user_specified_name	input_160
��
�
map_while_body_13768251$
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
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
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
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *L
else_branch=R;
9map_while_stateless_random_flip_left_right_false_13768311*!
output_shapes
:  *K
then_branch<R:
8map_while_stateless_random_flip_left_right_true_13768310�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_up_down_false_13768360*!
output_shapes
:  *H
then_branch9R7
5map_while_stateless_random_flip_up_down_true_13768359�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
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
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
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
�
�
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768393

inputs
map_while_input_6:	
identity��	map/while?
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
valueB:�
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
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
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
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *#
bodyR
map_while_body_13768251*#
condR
map_while_cond_13768250*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*/
_output_shapes
:���������  R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2
	map/while	map/while:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
F
*__inference_Reconst_layer_call_fn_13768616

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Reconst_layer_call_and_return_conditional_losses_13764519d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�B
�
F__inference_model_35_layer_call_and_return_conditional_losses_13765428

inputs
inputs_1
inputs_2+
model_34_13765322:
model_34_13765324:+
model_34_13765326:
model_34_13765328:+
model_34_13765330:
model_34_13765332:$
model_34_13765334:	�
model_34_13765336:$
sequential_20_13765339:	$
sequential_20_13765341:	"
reconst_13765354:@
reconst_13765356:@#
reconst_13765358:	@�
reconst_13765360:	�$
reconst_13765362:
��
reconst_13765364:	�$
reconst_13765366:
��
reconst_13765368:	�$
reconst_13765370:
��
reconst_13765372:	�$
reconst_13765374:
��
reconst_13765376:	�"
precip_13765379:	�
precip_13765381:	�#
precip_13765383:
��
precip_13765385:	�#
precip_13765387:
��
precip_13765389:	�"
precip_13765391:	�@
precip_13765393:@!
precip_13765395:@
precip_13765397:
rotationloss_13765400: 
rotationloss_13765402: 
rotationloss_13765404: 
rotationloss_13765406: 
hr_loss_13765410: 
hr_loss_13765412: 
precip_loss_13765416: 
precip_loss_13765418: 
identity

identity_1

identity_2

identity_3

identity_4

identity_5��hr_loss/StatefulPartitionedCall� model_34/StatefulPartitionedCall�"model_34/StatefulPartitionedCall_1�precip/StatefulPartitionedCall�#precip_loss/StatefulPartitionedCall�reconst/StatefulPartitionedCall�$rotationloss/StatefulPartitionedCall�%sequential_20/StatefulPartitionedCall�
 model_34/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_34_13765322model_34_13765324model_34_13765326model_34_13765328model_34_13765330model_34_13765332model_34_13765334model_34_13765336*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763565�
%sequential_20/StatefulPartitionedCallStatefulPartitionedCallinputssequential_20_13765339sequential_20_13765341*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764039�
concatenate_18/PartitionedCallPartitionedCall)model_34/StatefulPartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13764843�
"model_34/StatefulPartitionedCall_1StatefulPartitionedCall.sequential_20/StatefulPartitionedCall:output:0model_34_13765322model_34_13765324model_34_13765326model_34_13765328model_34_13765330model_34_13765332model_34_13765334model_34_13765336*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763565�
reconst/StatefulPartitionedCallStatefulPartitionedCall)model_34/StatefulPartitionedCall:output:0reconst_13765354reconst_13765356reconst_13765358reconst_13765360reconst_13765362reconst_13765364reconst_13765366reconst_13765368reconst_13765370reconst_13765372reconst_13765374reconst_13765376*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764681�
precip/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0precip_13765379precip_13765381precip_13765383precip_13765385precip_13765387precip_13765389precip_13765391precip_13765393precip_13765395precip_13765397*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764292�
$rotationloss/StatefulPartitionedCallStatefulPartitionedCall+model_34/StatefulPartitionedCall_1:output:0)model_34/StatefulPartitionedCall:output:0rotationloss_13765400rotationloss_13765402rotationloss_13765404rotationloss_13765406*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_rotationloss_layer_call_and_return_conditional_losses_13764955�
hr_loss/StatefulPartitionedCallStatefulPartitionedCall(reconst/StatefulPartitionedCall:output:0inputshr_loss_13765410hr_loss_13765412*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������  : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hr_loss_layer_call_and_return_conditional_losses_13765019�
#precip_loss/StatefulPartitionedCallStatefulPartitionedCall'precip/StatefulPartitionedCall:output:0inputs_2precip_loss_13765416precip_loss_13765418*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_precip_loss_layer_call_and_return_conditional_losses_13765077{
IdentityIdentity,precip_loss/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}

Identity_1Identity(hr_loss/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  m

Identity_2Identity-rotationloss/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: l

Identity_3Identity,precip_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(hr_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_5Identity-rotationloss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^hr_loss/StatefulPartitionedCall!^model_34/StatefulPartitionedCall#^model_34/StatefulPartitionedCall_1^precip/StatefulPartitionedCall$^precip_loss/StatefulPartitionedCall ^reconst/StatefulPartitionedCall%^rotationloss/StatefulPartitionedCall&^sequential_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
hr_loss/StatefulPartitionedCallhr_loss/StatefulPartitionedCall2D
 model_34/StatefulPartitionedCall model_34/StatefulPartitionedCall2H
"model_34/StatefulPartitionedCall_1"model_34/StatefulPartitionedCall_12@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall2J
#precip_loss/StatefulPartitionedCall#precip_loss/StatefulPartitionedCall2B
reconst/StatefulPartitionedCallreconst/StatefulPartitionedCall2L
$rotationloss/StatefulPartitionedCall$rotationloss/StatefulPartitionedCall2N
%sequential_20/StatefulPartitionedCall%sequential_20/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13763420

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
0__inference_sequential_20_layer_call_fn_13764055
random_flip_40_input
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_40_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764039w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:���������  
.
_user_specified_namerandom_flip_40_input
�@
�
F__inference_model_35_layer_call_and_return_conditional_losses_13765090

inputs
inputs_1
inputs_2+
model_34_13764818:
model_34_13764820:+
model_34_13764822:
model_34_13764824:+
model_34_13764826:
model_34_13764828:$
model_34_13764830:	�
model_34_13764832:"
reconst_13764854:@
reconst_13764856:@#
reconst_13764858:	@�
reconst_13764860:	�$
reconst_13764862:
��
reconst_13764864:	�$
reconst_13764866:
��
reconst_13764868:	�$
reconst_13764870:
��
reconst_13764872:	�$
reconst_13764874:
��
reconst_13764876:	�"
precip_13764879:	�
precip_13764881:	�#
precip_13764883:
��
precip_13764885:	�#
precip_13764887:
��
precip_13764889:	�"
precip_13764891:	�@
precip_13764893:@!
precip_13764895:@
precip_13764897:
rotationloss_13764956: 
rotationloss_13764958: 
rotationloss_13764960: 
rotationloss_13764962: 
hr_loss_13765020: 
hr_loss_13765022: 
precip_loss_13765078: 
precip_loss_13765080: 
identity

identity_1

identity_2

identity_3

identity_4

identity_5��hr_loss/StatefulPartitionedCall� model_34/StatefulPartitionedCall�"model_34/StatefulPartitionedCall_1�precip/StatefulPartitionedCall�#precip_loss/StatefulPartitionedCall�reconst/StatefulPartitionedCall�$rotationloss/StatefulPartitionedCall�
 model_34/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_34_13764818model_34_13764820model_34_13764822model_34_13764824model_34_13764826model_34_13764828model_34_13764830model_34_13764832*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763451�
sequential_20/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13763677�
concatenate_18/PartitionedCallPartitionedCall)model_34/StatefulPartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13764843�
"model_34/StatefulPartitionedCall_1StatefulPartitionedCall&sequential_20/PartitionedCall:output:0model_34_13764818model_34_13764820model_34_13764822model_34_13764824model_34_13764826model_34_13764828model_34_13764830model_34_13764832*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763451�
reconst/StatefulPartitionedCallStatefulPartitionedCall)model_34/StatefulPartitionedCall:output:0reconst_13764854reconst_13764856reconst_13764858reconst_13764860reconst_13764862reconst_13764864reconst_13764866reconst_13764868reconst_13764870reconst_13764872reconst_13764874reconst_13764876*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764522�
precip/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0precip_13764879precip_13764881precip_13764883precip_13764885precip_13764887precip_13764889precip_13764891precip_13764893precip_13764895precip_13764897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764163�
$rotationloss/StatefulPartitionedCallStatefulPartitionedCall+model_34/StatefulPartitionedCall_1:output:0)model_34/StatefulPartitionedCall:output:0rotationloss_13764956rotationloss_13764958rotationloss_13764960rotationloss_13764962*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_rotationloss_layer_call_and_return_conditional_losses_13764955�
hr_loss/StatefulPartitionedCallStatefulPartitionedCall(reconst/StatefulPartitionedCall:output:0inputshr_loss_13765020hr_loss_13765022*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������  : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hr_loss_layer_call_and_return_conditional_losses_13765019�
#precip_loss/StatefulPartitionedCallStatefulPartitionedCall'precip/StatefulPartitionedCall:output:0inputs_2precip_loss_13765078precip_loss_13765080*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_precip_loss_layer_call_and_return_conditional_losses_13765077{
IdentityIdentity,precip_loss/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}

Identity_1Identity(hr_loss/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  m

Identity_2Identity-rotationloss/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: l

Identity_3Identity,precip_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(hr_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_5Identity-rotationloss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^hr_loss/StatefulPartitionedCall!^model_34/StatefulPartitionedCall#^model_34/StatefulPartitionedCall_1^precip/StatefulPartitionedCall$^precip_loss/StatefulPartitionedCall ^reconst/StatefulPartitionedCall%^rotationloss/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
hr_loss/StatefulPartitionedCallhr_loss/StatefulPartitionedCall2D
 model_34/StatefulPartitionedCall model_34/StatefulPartitionedCall2H
"model_34/StatefulPartitionedCall_1"model_34/StatefulPartitionedCall_12@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall2J
#precip_loss/StatefulPartitionedCall#precip_loss/StatefulPartitionedCall2B
reconst/StatefulPartitionedCallreconst/StatefulPartitionedCall2L
$rotationloss/StatefulPartitionedCall$rotationloss/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_dense_249_layer_call_fn_13768422

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_249_layer_call_and_return_conditional_losses_13764106p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
)__inference_precip_layer_call_fn_13767506

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764292o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
map_while_cond_13763703$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice>
:map_while_map_while_cond_13763703___redundant_placeholder0>
:map_while_map_while_cond_13763703___redundant_placeholder1
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
�	
�
+__inference_model_34_layer_call_fn_13763605
	input_154!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_154unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763565o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_154
�$
�
E__inference_reconst_layer_call_and_return_conditional_losses_13764772
	input_155$
dense_240_13764740:@ 
dense_240_13764742:@%
dense_241_13764745:	@�!
dense_241_13764747:	�&
dense_242_13764750:
��!
dense_242_13764752:	�&
dense_243_13764755:
��!
dense_243_13764757:	�&
dense_244_13764760:
��!
dense_244_13764762:	�&
dense_245_13764765:
��!
dense_245_13764767:	�
identity��!dense_240/StatefulPartitionedCall�!dense_241/StatefulPartitionedCall�!dense_242/StatefulPartitionedCall�!dense_243/StatefulPartitionedCall�!dense_244/StatefulPartitionedCall�!dense_245/StatefulPartitionedCall�
!dense_240/StatefulPartitionedCallStatefulPartitionedCall	input_155dense_240_13764740dense_240_13764742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_240_layer_call_and_return_conditional_losses_13764416�
!dense_241/StatefulPartitionedCallStatefulPartitionedCall*dense_240/StatefulPartitionedCall:output:0dense_241_13764745dense_241_13764747*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_241_layer_call_and_return_conditional_losses_13764433�
!dense_242/StatefulPartitionedCallStatefulPartitionedCall*dense_241/StatefulPartitionedCall:output:0dense_242_13764750dense_242_13764752*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_242_layer_call_and_return_conditional_losses_13764450�
!dense_243/StatefulPartitionedCallStatefulPartitionedCall*dense_242/StatefulPartitionedCall:output:0dense_243_13764755dense_243_13764757*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_243_layer_call_and_return_conditional_losses_13764467�
!dense_244/StatefulPartitionedCallStatefulPartitionedCall*dense_243/StatefulPartitionedCall:output:0dense_244_13764760dense_244_13764762*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_244_layer_call_and_return_conditional_losses_13764484�
!dense_245/StatefulPartitionedCallStatefulPartitionedCall*dense_244/StatefulPartitionedCall:output:0dense_245_13764765dense_245_13764767*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_245_layer_call_and_return_conditional_losses_13764500�
Reconst/PartitionedCallPartitionedCall*dense_245/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Reconst_layer_call_and_return_conditional_losses_13764519s
IdentityIdentity Reconst/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  �
NoOpNoOp"^dense_240/StatefulPartitionedCall"^dense_241/StatefulPartitionedCall"^dense_242/StatefulPartitionedCall"^dense_243/StatefulPartitionedCall"^dense_244/StatefulPartitionedCall"^dense_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2F
!dense_240/StatefulPartitionedCall!dense_240/StatefulPartitionedCall2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2F
!dense_244/StatefulPartitionedCall!dense_244/StatefulPartitionedCall2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_155
�8
�
I__inference_precip_loss_layer_call_and_return_conditional_losses_13767810
inputs_pred
inputs_true&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: 

identity_1

identity_2��AssignAddVariableOp�AssignAddVariableOp_1�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1�
$mean_squared_error/SquaredDifferenceSquaredDifferenceinputs_predinputs_true*
T0*'
_output_shapes
:���������t
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������k
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������r
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
-mean_squared_error/weighted_loss/num_elementsSize(mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���>g
mulMulmul/x:output:0*mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
&mean_squared_error_1/SquaredDifferenceSquaredDifferenceinputs_predinputs_true*
T0*'
_output_shapes
:���������v
+mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error_1/MeanMean*mean_squared_error_1/SquaredDifference:z:04mean_squared_error_1/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������m
(mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&mean_squared_error_1/weighted_loss/MulMul"mean_squared_error_1/Mean:output:01mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������t
*mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
&mean_squared_error_1/weighted_loss/SumSum*mean_squared_error_1/weighted_loss/Mul:z:03mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
/mean_squared_error_1/weighted_loss/num_elementsSize*mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
4mean_squared_error_1/weighted_loss/num_elements/CastCast8mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: i
'mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
(mean_squared_error_1/weighted_loss/rangeRange7mean_squared_error_1/weighted_loss/range/start:output:00mean_squared_error_1/weighted_loss/Rank:output:07mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/Sum_1Sum/mean_squared_error_1/weighted_loss/Sum:output:01mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/valueDivNoNan1mean_squared_error_1/weighted_loss/Sum_1:output:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: i
SumSum,mean_squared_error_1/weighted_loss/value:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: \

Identity_1Identityinputs_pred^NoOp*
T0*'
_output_shapes
:���������G

Identity_2Identitymul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_1:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/pred:TP
'
_output_shapes
:���������
%
_user_specified_nameinputs/true
�
�
Vsequential_20_random_flip_41_map_while_stateless_random_flip_left_right_false_13766664�
�sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_identity_sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_20_random_flip_41_map_while_stateless_random_flip_left_right_identity�
Psequential_20/random_flip_41/map/while/stateless_random_flip_left_right/IdentityIdentity�sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_identity_sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "�
Psequential_20_random_flip_41_map_while_stateless_random_flip_left_right_identityYsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
/__inference_rotationloss_layer_call_fn_13767889
inputs_pred
inputs_true
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_predinputs_trueunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_rotationloss_layer_call_and_return_conditional_losses_13764955^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/pred:TP
'
_output_shapes
:���������
%
_user_specified_nameinputs/true
�

�
G__inference_dense_242_layer_call_and_return_conditional_losses_13764450

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�@
�
F__inference_model_35_layer_call_and_return_conditional_losses_13765719
	input_158
	input_159
	input_160+
model_34_13765617:
model_34_13765619:+
model_34_13765621:
model_34_13765623:+
model_34_13765625:
model_34_13765627:$
model_34_13765629:	�
model_34_13765631:"
reconst_13765645:@
reconst_13765647:@#
reconst_13765649:	@�
reconst_13765651:	�$
reconst_13765653:
��
reconst_13765655:	�$
reconst_13765657:
��
reconst_13765659:	�$
reconst_13765661:
��
reconst_13765663:	�$
reconst_13765665:
��
reconst_13765667:	�"
precip_13765670:	�
precip_13765672:	�#
precip_13765674:
��
precip_13765676:	�#
precip_13765678:
��
precip_13765680:	�"
precip_13765682:	�@
precip_13765684:@!
precip_13765686:@
precip_13765688:
rotationloss_13765691: 
rotationloss_13765693: 
rotationloss_13765695: 
rotationloss_13765697: 
hr_loss_13765701: 
hr_loss_13765703: 
precip_loss_13765707: 
precip_loss_13765709: 
identity

identity_1

identity_2

identity_3

identity_4

identity_5��hr_loss/StatefulPartitionedCall� model_34/StatefulPartitionedCall�"model_34/StatefulPartitionedCall_1�precip/StatefulPartitionedCall�#precip_loss/StatefulPartitionedCall�reconst/StatefulPartitionedCall�$rotationloss/StatefulPartitionedCall�
 model_34/StatefulPartitionedCallStatefulPartitionedCall	input_158model_34_13765617model_34_13765619model_34_13765621model_34_13765623model_34_13765625model_34_13765627model_34_13765629model_34_13765631*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763451�
sequential_20/PartitionedCallPartitionedCall	input_158*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13763677�
concatenate_18/PartitionedCallPartitionedCall)model_34/StatefulPartitionedCall:output:0	input_159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13764843�
"model_34/StatefulPartitionedCall_1StatefulPartitionedCall&sequential_20/PartitionedCall:output:0model_34_13765617model_34_13765619model_34_13765621model_34_13765623model_34_13765625model_34_13765627model_34_13765629model_34_13765631*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763451�
reconst/StatefulPartitionedCallStatefulPartitionedCall)model_34/StatefulPartitionedCall:output:0reconst_13765645reconst_13765647reconst_13765649reconst_13765651reconst_13765653reconst_13765655reconst_13765657reconst_13765659reconst_13765661reconst_13765663reconst_13765665reconst_13765667*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764522�
precip/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0precip_13765670precip_13765672precip_13765674precip_13765676precip_13765678precip_13765680precip_13765682precip_13765684precip_13765686precip_13765688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764163�
$rotationloss/StatefulPartitionedCallStatefulPartitionedCall+model_34/StatefulPartitionedCall_1:output:0)model_34/StatefulPartitionedCall:output:0rotationloss_13765691rotationloss_13765693rotationloss_13765695rotationloss_13765697*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_rotationloss_layer_call_and_return_conditional_losses_13764955�
hr_loss/StatefulPartitionedCallStatefulPartitionedCall(reconst/StatefulPartitionedCall:output:0	input_158hr_loss_13765701hr_loss_13765703*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������  : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hr_loss_layer_call_and_return_conditional_losses_13765019�
#precip_loss/StatefulPartitionedCallStatefulPartitionedCall'precip/StatefulPartitionedCall:output:0	input_160precip_loss_13765707precip_loss_13765709*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_precip_loss_layer_call_and_return_conditional_losses_13765077{
IdentityIdentity,precip_loss/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������}

Identity_1Identity(hr_loss/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  m

Identity_2Identity-rotationloss/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: l

Identity_3Identity,precip_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: h

Identity_4Identity(hr_loss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: m

Identity_5Identity-rotationloss/StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
: �
NoOpNoOp ^hr_loss/StatefulPartitionedCall!^model_34/StatefulPartitionedCall#^model_34/StatefulPartitionedCall_1^precip/StatefulPartitionedCall$^precip_loss/StatefulPartitionedCall ^reconst/StatefulPartitionedCall%^rotationloss/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
hr_loss/StatefulPartitionedCallhr_loss/StatefulPartitionedCall2D
 model_34/StatefulPartitionedCall model_34/StatefulPartitionedCall2H
"model_34/StatefulPartitionedCall_1"model_34/StatefulPartitionedCall_12@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall2J
#precip_loss/StatefulPartitionedCall#precip_loss/StatefulPartitionedCall2B
reconst/StatefulPartitionedCallreconst/StatefulPartitionedCall2L
$rotationloss/StatefulPartitionedCall$rotationloss/StatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_158:RN
'
_output_shapes
:���������
#
_user_specified_name	input_159:RN
'
_output_shapes
:���������
#
_user_specified_name	input_160
�
Z
0__inference_sequential_20_layer_call_fn_13763680
random_flip_40_input
identity�
PartitionedCallPartitionedCallrandom_flip_40_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13763677h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :e a
/
_output_shapes
:���������  
.
_user_specified_namerandom_flip_40_input
�
�
F__inference_model_34_layer_call_and_return_conditional_losses_13763565

inputs,
conv2d_60_13763543: 
conv2d_60_13763545:,
conv2d_61_13763548: 
conv2d_61_13763550:,
conv2d_62_13763553: 
conv2d_62_13763555:!
xmean_13763559:	�
xmean_13763561:
identity��!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_20/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������" * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13763364�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_20/PartitionedCall:output:0conv2d_60_13763543conv2d_60_13763545*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13763386�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_13763548conv2d_61_13763550*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13763403�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_62_13763553conv2d_62_13763555*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13763420�
flatten_20/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_20_layer_call_and_return_conditional_losses_13763432�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0xmean_13763559xmean_13763561*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_xmean_layer_call_and_return_conditional_losses_13763444u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Hrandom_flip_40_map_while_stateless_random_flip_left_right_false_13767220�
�random_flip_40_map_while_stateless_random_flip_left_right_identity_random_flip_40_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_40_map_while_stateless_random_flip_left_right_identity�
Brandom_flip_40/map/while/stateless_random_flip_left_right/IdentityIdentity�random_flip_40_map_while_stateless_random_flip_left_right_identity_random_flip_40_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "�
Brandom_flip_40_map_while_stateless_random_flip_left_right_identityKrandom_flip_40/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
Rsequential_20_random_flip_41_map_while_stateless_random_flip_up_down_true_13766712�
�sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_reversev2_sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_20_random_flip_41_map_while_stateless_random_flip_up_down_identity�
Ssequential_20/random_flip_41/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
Nsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_reversev2_sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_control_dependency\sequential_20/random_flip_41/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
Msequential_20/random_flip_41/map/while/stateless_random_flip_up_down/IdentityIdentityWsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
Msequential_20_random_flip_41_map_while_stateless_random_flip_up_down_identityVsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

�
G__inference_dense_240_layer_call_and_return_conditional_losses_13764416

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
8map_while_stateless_random_flip_left_right_true_13768310v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764039

inputs%
random_flip_40_13764032:	%
random_flip_41_13764035:	
identity��&random_flip_40/StatefulPartitionedCall�&random_flip_41/StatefulPartitionedCall�
&random_flip_40/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_40_13764032*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13764017�
&random_flip_41/StatefulPartitionedCallStatefulPartitionedCall/random_flip_40/StatefulPartitionedCall:output:0random_flip_41_13764035*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763846�
IdentityIdentity/random_flip_41/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp'^random_flip_40/StatefulPartitionedCall'^random_flip_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 2P
&random_flip_40/StatefulPartitionedCall&random_flip_40/StatefulPartitionedCall2P
&random_flip_41/StatefulPartitionedCall&random_flip_41/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

a
E__inference_Reconst_layer_call_and_return_conditional_losses_13768629

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������  \
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�+
!__inference__traced_save_13768987
file_prefix/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop+
'savev2_xmean_kernel_read_readvariableop)
%savev2_xmean_bias_read_readvariableop/
+savev2_dense_248_kernel_read_readvariableop-
)savev2_dense_248_bias_read_readvariableop/
+savev2_dense_249_kernel_read_readvariableop-
)savev2_dense_249_bias_read_readvariableop/
+savev2_dense_250_kernel_read_readvariableop-
)savev2_dense_250_bias_read_readvariableop/
+savev2_dense_251_kernel_read_readvariableop-
)savev2_dense_251_bias_read_readvariableop,
(savev2_precip_kernel_read_readvariableop*
&savev2_precip_bias_read_readvariableop/
+savev2_dense_240_kernel_read_readvariableop-
)savev2_dense_240_bias_read_readvariableop/
+savev2_dense_241_kernel_read_readvariableop-
)savev2_dense_241_bias_read_readvariableop/
+savev2_dense_242_kernel_read_readvariableop-
)savev2_dense_242_bias_read_readvariableop/
+savev2_dense_243_kernel_read_readvariableop-
)savev2_dense_243_bias_read_readvariableop/
+savev2_dense_244_kernel_read_readvariableop-
)savev2_dense_244_bias_read_readvariableop/
+savev2_dense_245_kernel_read_readvariableop-
)savev2_dense_245_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop0
,savev2_precip_loss_total_read_readvariableop0
,savev2_precip_loss_count_read_readvariableop,
(savev2_hr_loss_total_read_readvariableop,
(savev2_hr_loss_count_read_readvariableop3
/savev2_rotationloss_total_1_read_readvariableop3
/savev2_rotationloss_count_1_read_readvariableop1
-savev2_rotationloss_total_read_readvariableop1
-savev2_rotationloss_count_read_readvariableop)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	6
2savev2_adam_conv2d_60_kernel_m_read_readvariableop4
0savev2_adam_conv2d_60_bias_m_read_readvariableop6
2savev2_adam_conv2d_61_kernel_m_read_readvariableop4
0savev2_adam_conv2d_61_bias_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableop2
.savev2_adam_xmean_kernel_m_read_readvariableop0
,savev2_adam_xmean_bias_m_read_readvariableop6
2savev2_adam_dense_248_kernel_m_read_readvariableop4
0savev2_adam_dense_248_bias_m_read_readvariableop6
2savev2_adam_dense_249_kernel_m_read_readvariableop4
0savev2_adam_dense_249_bias_m_read_readvariableop6
2savev2_adam_dense_250_kernel_m_read_readvariableop4
0savev2_adam_dense_250_bias_m_read_readvariableop6
2savev2_adam_dense_251_kernel_m_read_readvariableop4
0savev2_adam_dense_251_bias_m_read_readvariableop3
/savev2_adam_precip_kernel_m_read_readvariableop1
-savev2_adam_precip_bias_m_read_readvariableop6
2savev2_adam_dense_240_kernel_m_read_readvariableop4
0savev2_adam_dense_240_bias_m_read_readvariableop6
2savev2_adam_dense_241_kernel_m_read_readvariableop4
0savev2_adam_dense_241_bias_m_read_readvariableop6
2savev2_adam_dense_242_kernel_m_read_readvariableop4
0savev2_adam_dense_242_bias_m_read_readvariableop6
2savev2_adam_dense_243_kernel_m_read_readvariableop4
0savev2_adam_dense_243_bias_m_read_readvariableop6
2savev2_adam_dense_244_kernel_m_read_readvariableop4
0savev2_adam_dense_244_bias_m_read_readvariableop6
2savev2_adam_dense_245_kernel_m_read_readvariableop4
0savev2_adam_dense_245_bias_m_read_readvariableop6
2savev2_adam_conv2d_60_kernel_v_read_readvariableop4
0savev2_adam_conv2d_60_bias_v_read_readvariableop6
2savev2_adam_conv2d_61_kernel_v_read_readvariableop4
0savev2_adam_conv2d_61_bias_v_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableop2
.savev2_adam_xmean_kernel_v_read_readvariableop0
,savev2_adam_xmean_bias_v_read_readvariableop6
2savev2_adam_dense_248_kernel_v_read_readvariableop4
0savev2_adam_dense_248_bias_v_read_readvariableop6
2savev2_adam_dense_249_kernel_v_read_readvariableop4
0savev2_adam_dense_249_bias_v_read_readvariableop6
2savev2_adam_dense_250_kernel_v_read_readvariableop4
0savev2_adam_dense_250_bias_v_read_readvariableop6
2savev2_adam_dense_251_kernel_v_read_readvariableop4
0savev2_adam_dense_251_bias_v_read_readvariableop3
/savev2_adam_precip_kernel_v_read_readvariableop1
-savev2_adam_precip_bias_v_read_readvariableop6
2savev2_adam_dense_240_kernel_v_read_readvariableop4
0savev2_adam_dense_240_bias_v_read_readvariableop6
2savev2_adam_dense_241_kernel_v_read_readvariableop4
0savev2_adam_dense_241_bias_v_read_readvariableop6
2savev2_adam_dense_242_kernel_v_read_readvariableop4
0savev2_adam_dense_242_bias_v_read_readvariableop6
2savev2_adam_dense_243_kernel_v_read_readvariableop4
0savev2_adam_dense_243_bias_v_read_readvariableop6
2savev2_adam_dense_244_kernel_v_read_readvariableop4
0savev2_adam_dense_244_bias_v_read_readvariableop6
2savev2_adam_dense_245_kernel_v_read_readvariableop4
0savev2_adam_dense_245_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:l*
dtype0*�1
value�1B�1lB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-4/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-4/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:l*
dtype0*�
value�B�lB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �)
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop'savev2_xmean_kernel_read_readvariableop%savev2_xmean_bias_read_readvariableop+savev2_dense_248_kernel_read_readvariableop)savev2_dense_248_bias_read_readvariableop+savev2_dense_249_kernel_read_readvariableop)savev2_dense_249_bias_read_readvariableop+savev2_dense_250_kernel_read_readvariableop)savev2_dense_250_bias_read_readvariableop+savev2_dense_251_kernel_read_readvariableop)savev2_dense_251_bias_read_readvariableop(savev2_precip_kernel_read_readvariableop&savev2_precip_bias_read_readvariableop+savev2_dense_240_kernel_read_readvariableop)savev2_dense_240_bias_read_readvariableop+savev2_dense_241_kernel_read_readvariableop)savev2_dense_241_bias_read_readvariableop+savev2_dense_242_kernel_read_readvariableop)savev2_dense_242_bias_read_readvariableop+savev2_dense_243_kernel_read_readvariableop)savev2_dense_243_bias_read_readvariableop+savev2_dense_244_kernel_read_readvariableop)savev2_dense_244_bias_read_readvariableop+savev2_dense_245_kernel_read_readvariableop)savev2_dense_245_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop,savev2_precip_loss_total_read_readvariableop,savev2_precip_loss_count_read_readvariableop(savev2_hr_loss_total_read_readvariableop(savev2_hr_loss_count_read_readvariableop/savev2_rotationloss_total_1_read_readvariableop/savev2_rotationloss_count_1_read_readvariableop-savev2_rotationloss_total_read_readvariableop-savev2_rotationloss_count_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop2savev2_adam_conv2d_60_kernel_m_read_readvariableop0savev2_adam_conv2d_60_bias_m_read_readvariableop2savev2_adam_conv2d_61_kernel_m_read_readvariableop0savev2_adam_conv2d_61_bias_m_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop.savev2_adam_xmean_kernel_m_read_readvariableop,savev2_adam_xmean_bias_m_read_readvariableop2savev2_adam_dense_248_kernel_m_read_readvariableop0savev2_adam_dense_248_bias_m_read_readvariableop2savev2_adam_dense_249_kernel_m_read_readvariableop0savev2_adam_dense_249_bias_m_read_readvariableop2savev2_adam_dense_250_kernel_m_read_readvariableop0savev2_adam_dense_250_bias_m_read_readvariableop2savev2_adam_dense_251_kernel_m_read_readvariableop0savev2_adam_dense_251_bias_m_read_readvariableop/savev2_adam_precip_kernel_m_read_readvariableop-savev2_adam_precip_bias_m_read_readvariableop2savev2_adam_dense_240_kernel_m_read_readvariableop0savev2_adam_dense_240_bias_m_read_readvariableop2savev2_adam_dense_241_kernel_m_read_readvariableop0savev2_adam_dense_241_bias_m_read_readvariableop2savev2_adam_dense_242_kernel_m_read_readvariableop0savev2_adam_dense_242_bias_m_read_readvariableop2savev2_adam_dense_243_kernel_m_read_readvariableop0savev2_adam_dense_243_bias_m_read_readvariableop2savev2_adam_dense_244_kernel_m_read_readvariableop0savev2_adam_dense_244_bias_m_read_readvariableop2savev2_adam_dense_245_kernel_m_read_readvariableop0savev2_adam_dense_245_bias_m_read_readvariableop2savev2_adam_conv2d_60_kernel_v_read_readvariableop0savev2_adam_conv2d_60_bias_v_read_readvariableop2savev2_adam_conv2d_61_kernel_v_read_readvariableop0savev2_adam_conv2d_61_bias_v_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop.savev2_adam_xmean_kernel_v_read_readvariableop,savev2_adam_xmean_bias_v_read_readvariableop2savev2_adam_dense_248_kernel_v_read_readvariableop0savev2_adam_dense_248_bias_v_read_readvariableop2savev2_adam_dense_249_kernel_v_read_readvariableop0savev2_adam_dense_249_bias_v_read_readvariableop2savev2_adam_dense_250_kernel_v_read_readvariableop0savev2_adam_dense_250_bias_v_read_readvariableop2savev2_adam_dense_251_kernel_v_read_readvariableop0savev2_adam_dense_251_bias_v_read_readvariableop/savev2_adam_precip_kernel_v_read_readvariableop-savev2_adam_precip_bias_v_read_readvariableop2savev2_adam_dense_240_kernel_v_read_readvariableop0savev2_adam_dense_240_bias_v_read_readvariableop2savev2_adam_dense_241_kernel_v_read_readvariableop0savev2_adam_dense_241_bias_v_read_readvariableop2savev2_adam_dense_242_kernel_v_read_readvariableop0savev2_adam_dense_242_bias_v_read_readvariableop2savev2_adam_dense_243_kernel_v_read_readvariableop0savev2_adam_dense_243_bias_v_read_readvariableop2savev2_adam_dense_244_kernel_v_read_readvariableop0savev2_adam_dense_244_bias_v_read_readvariableop2savev2_adam_dense_245_kernel_v_read_readvariableop0savev2_adam_dense_245_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *z
dtypesp
n2l			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::	�::	�:�:
��:�:
��:�:	�@:@:@::@:@:	@�:�:
��:�:
��:�:
��:�:
��:�: : : : : : : : : : : : : : : :::::::::	�::	�:�:
��:�:
��:�:	�@:@:@::@:@:	@�:�:
��:�:
��:�:
��:�:
��:�:::::::	�::	�:�:
��:�:
��:�:	�@:@:@::@:@:	@�:�:
��:�:
��:�:
��:�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	�: 

_output_shapes
::%	!

_output_shapes
:	�:!


_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:%!

_output_shapes
:	@�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: : .

_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::%6!

_output_shapes
:	�: 7

_output_shapes
::%8!

_output_shapes
:	�:!9

_output_shapes	
:�:&:"
 
_output_shapes
:
��:!;

_output_shapes	
:�:&<"
 
_output_shapes
:
��:!=

_output_shapes	
:�:%>!

_output_shapes
:	�@: ?

_output_shapes
:@:$@ 

_output_shapes

:@: A

_output_shapes
::$B 

_output_shapes

:@: C

_output_shapes
:@:%D!

_output_shapes
:	@�:!E

_output_shapes	
:�:&F"
 
_output_shapes
:
��:!G

_output_shapes	
:�:&H"
 
_output_shapes
:
��:!I

_output_shapes	
:�:&J"
 
_output_shapes
:
��:!K

_output_shapes	
:�:&L"
 
_output_shapes
:
��:!M

_output_shapes	
:�:,N(
&
_output_shapes
:: O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
::,R(
&
_output_shapes
:: S

_output_shapes
::%T!

_output_shapes
:	�: U

_output_shapes
::%V!

_output_shapes
:	�:!W

_output_shapes	
:�:&X"
 
_output_shapes
:
��:!Y

_output_shapes	
:�:&Z"
 
_output_shapes
:
��:![

_output_shapes	
:�:%\!

_output_shapes
:	�@: ]

_output_shapes
:@:$^ 

_output_shapes

:@: _

_output_shapes
::$` 

_output_shapes

:@: a

_output_shapes
:@:%b!

_output_shapes
:	@�:!c

_output_shapes	
:�:&d"
 
_output_shapes
:
��:!e

_output_shapes	
:�:&f"
 
_output_shapes
:
��:!g

_output_shapes	
:�:&h"
 
_output_shapes
:
��:!i

_output_shapes	
:�:&j"
 
_output_shapes
:
��:!k

_output_shapes	
:�:l

_output_shapes
: 
��
�
4sequential_20_random_flip_40_map_while_body_13766450^
Zsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_while_loop_counterY
Usequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice6
2sequential_20_random_flip_40_map_while_placeholder8
4sequential_20_random_flip_40_map_while_placeholder_1]
Ysequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice_1_0�
�sequential_20_random_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_40_map_tensorarrayunstack_tensorlistfromtensor_0h
Zsequential_20_random_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	3
/sequential_20_random_flip_40_map_while_identity5
1sequential_20_random_flip_40_map_while_identity_15
1sequential_20_random_flip_40_map_while_identity_25
1sequential_20_random_flip_40_map_while_identity_3[
Wsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice_1�
�sequential_20_random_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_40_map_tensorarrayunstack_tensorlistfromtensorf
Xsequential_20_random_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��Osequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip�Qsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Xsequential_20/random_flip_40/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
Jsequential_20/random_flip_40/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_20_random_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_40_map_tensorarrayunstack_tensorlistfromtensor_02sequential_20_random_flip_40_map_while_placeholderasequential_20/random_flip_40/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
element_dtype0�
Fsequential_20/random_flip_40/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Fsequential_20/random_flip_40/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_20/random_flip_40/map/while/stateful_uniform_full_int/ProdProdOsequential_20/random_flip_40/map/while/stateful_uniform_full_int/shape:output:0Osequential_20/random_flip_40/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: �
Gsequential_20/random_flip_40/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Gsequential_20/random_flip_40/map/while/stateful_uniform_full_int/Cast_1CastNsequential_20/random_flip_40/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Osequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipZsequential_20_random_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Psequential_20/random_flip_40/map/while/stateful_uniform_full_int/Cast/x:output:0Ksequential_20/random_flip_40/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Tsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Vsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Nsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_sliceStridedSliceWsequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack:output:0_sequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0_sequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Hsequential_20/random_flip_40/map/while/stateful_uniform_full_int/BitcastBitcastWsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Vsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Psequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceWsequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0_sequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0asequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0asequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Jsequential_20/random_flip_40/map/while/stateful_uniform_full_int/Bitcast_1BitcastYsequential_20/random_flip_40/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Dsequential_20/random_flip_40/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
@sequential_20/random_flip_40/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Osequential_20/random_flip_40/map/while/stateful_uniform_full_int/shape:output:0Ssequential_20/random_flip_40/map/while/stateful_uniform_full_int/Bitcast_1:output:0Qsequential_20/random_flip_40/map/while/stateful_uniform_full_int/Bitcast:output:0Msequential_20/random_flip_40/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	{
1sequential_20/random_flip_40/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
,sequential_20/random_flip_40/map/while/stackPackIsequential_20/random_flip_40/map/while/stateful_uniform_full_int:output:0:sequential_20/random_flip_40/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:�
:sequential_20/random_flip_40/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
<sequential_20/random_flip_40/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
<sequential_20/random_flip_40/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
4sequential_20/random_flip_40/map/while/strided_sliceStridedSlice5sequential_20/random_flip_40/map/while/stack:output:0Csequential_20/random_flip_40/map/while/strided_slice/stack:output:0Esequential_20/random_flip_40/map/while/strided_slice/stack_1:output:0Esequential_20/random_flip_40/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Zsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/control_dependencyIdentityQsequential_20/random_flip_40/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*]
_classS
QOloc:@sequential_20/random_flip_40/map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
fsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
dsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
dsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
}sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter=sequential_20/random_flip_40/map/while/strided_slice:output:0* 
_output_shapes
::�
}sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
ysequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2osequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0�sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
dsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubmsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0msequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
dsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMul�sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0hsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
`sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2hsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0msequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Nsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Lsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/LessLessdsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Wsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
Gsequential_20/random_flip_40/map/while/stateless_random_flip_left_rightStatelessIfPsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/Less:z:0csequential_20/random_flip_40/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *i
else_branchZRX
Vsequential_20_random_flip_40_map_while_stateless_random_flip_left_right_false_13766510*!
output_shapes
:  *h
then_branchYRW
Usequential_20_random_flip_40_map_while_stateless_random_flip_left_right_true_13766509�
Psequential_20/random_flip_40/map/while/stateless_random_flip_left_right/IdentityIdentityPsequential_20/random_flip_40/map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  �
Hsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Hsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Gsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/ProdProdQsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/shape:output:0Qsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: �
Isequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Isequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Cast_1CastPsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Qsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipZsequential_20_random_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Rsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Cast/x:output:0Msequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Cast_1:y:0P^sequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Vsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Xsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Psequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceYsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0_sequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0asequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0asequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Jsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/BitcastBitcastYsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Xsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceYsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0asequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0csequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0csequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Lsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast[sequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Fsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
Bsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Qsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/shape:output:0Usequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Ssequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/Bitcast:output:0Osequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	}
3sequential_20/random_flip_40/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
.sequential_20/random_flip_40/map/while/stack_1PackKsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1:output:0<sequential_20/random_flip_40/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:�
<sequential_20/random_flip_40/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>sequential_20/random_flip_40/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>sequential_20/random_flip_40/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6sequential_20/random_flip_40/map/while/strided_slice_1StridedSlice7sequential_20/random_flip_40/map/while/stack_1:output:0Esequential_20/random_flip_40/map/while/strided_slice_1/stack:output:0Gsequential_20/random_flip_40/map/while/strided_slice_1/stack_1:output:0Gsequential_20/random_flip_40/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Wsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/control_dependencyIdentityYsequential_20/random_flip_40/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*c
_classY
WUloc:@sequential_20/random_flip_40/map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
csequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
asequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
asequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?sequential_20/random_flip_40/map/while/strided_slice_1:output:0* 
_output_shapes
::�
zsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
vsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2lsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0�sequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
asequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubjsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0jsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
asequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0esequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
]sequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2esequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0jsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Ksequential_20/random_flip_40/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Isequential_20/random_flip_40/map/while/stateless_random_flip_up_down/LessLessasequential_20/random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Tsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
Dsequential_20/random_flip_40/map/while/stateless_random_flip_up_downStatelessIfMsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/Less:z:0`sequential_20/random_flip_40/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *f
else_branchWRU
Ssequential_20_random_flip_40_map_while_stateless_random_flip_up_down_false_13766559*!
output_shapes
:  *e
then_branchVRT
Rsequential_20_random_flip_40_map_while_stateless_random_flip_up_down_true_13766558�
Msequential_20/random_flip_40/map/while/stateless_random_flip_up_down/IdentityIdentityMsequential_20/random_flip_40/map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
Ksequential_20/random_flip_40/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4sequential_20_random_flip_40_map_while_placeholder_12sequential_20_random_flip_40_map_while_placeholderVsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���n
,sequential_20/random_flip_40/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
*sequential_20/random_flip_40/map/while/addAddV22sequential_20_random_flip_40_map_while_placeholder5sequential_20/random_flip_40/map/while/add/y:output:0*
T0*
_output_shapes
: p
.sequential_20/random_flip_40/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
,sequential_20/random_flip_40/map/while/add_1AddV2Zsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_while_loop_counter7sequential_20/random_flip_40/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
/sequential_20/random_flip_40/map/while/IdentityIdentity0sequential_20/random_flip_40/map/while/add_1:z:0,^sequential_20/random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
1sequential_20/random_flip_40/map/while/Identity_1IdentityUsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice,^sequential_20/random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
1sequential_20/random_flip_40/map/while/Identity_2Identity.sequential_20/random_flip_40/map/while/add:z:0,^sequential_20/random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
1sequential_20/random_flip_40/map/while/Identity_3Identity[sequential_20/random_flip_40/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^sequential_20/random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
+sequential_20/random_flip_40/map/while/NoOpNoOpP^sequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkipR^sequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "k
/sequential_20_random_flip_40_map_while_identity8sequential_20/random_flip_40/map/while/Identity:output:0"o
1sequential_20_random_flip_40_map_while_identity_1:sequential_20/random_flip_40/map/while/Identity_1:output:0"o
1sequential_20_random_flip_40_map_while_identity_2:sequential_20/random_flip_40/map/while/Identity_2:output:0"o
1sequential_20_random_flip_40_map_while_identity_3:sequential_20/random_flip_40/map/while/Identity_3:output:0"�
Wsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice_1Ysequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice_1_0"�
Xsequential_20_random_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resourceZsequential_20_random_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
�sequential_20_random_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_40_map_tensorarrayunstack_tensorlistfromtensor�sequential_20_random_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_40_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
Osequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkipOsequential_20/random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Qsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkipQsequential_20/random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 
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
�
�
map_while_cond_13768250$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice>
:map_while_map_while_cond_13768250___redundant_placeholder0>
:map_while_map_while_cond_13768250___redundant_placeholder1
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
�
�
*__inference_reconst_layer_call_fn_13767611

inputs
unknown:@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764522s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
G__inference_dense_240_layer_call_and_return_conditional_losses_13768512

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13763386

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������" : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������" 
 
_user_specified_nameinputs
�
L
0__inference_sequential_20_layer_call_fn_13767131

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13763677h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
)__inference_precip_layer_call_fn_13764186
	input_157
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_157unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764163o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_157
�
h
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763674

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
k
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13767955

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_reconst_layer_call_fn_13767640

inputs
unknown:@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764681s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
+__inference_model_34_layer_call_fn_13763470
	input_154!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_154unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763451o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_154
�

�
G__inference_dense_249_layer_call_and_return_conditional_losses_13768433

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_random_flip_40_layer_call_fn_13768050

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13763668h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
G__inference_dense_241_layer_call_and_return_conditional_losses_13764433

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
map_while_cond_13763874$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice>
:map_while_map_while_cond_13763874___redundant_placeholder0>
:map_while_map_while_cond_13763874___redundant_placeholder1
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
�
h
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768061

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
D__inference_precip_layer_call_and_return_conditional_losses_13768492

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13764017

inputs
map_while_input_6:	
identity��	map/while?
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
valueB:�
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
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
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
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *#
bodyR
map_while_body_13763875*#
condR
map_while_cond_13763874*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*/
_output_shapes
:���������  R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2
	map/while	map/while:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
F__inference_model_34_layer_call_and_return_conditional_losses_13763631
	input_154,
conv2d_60_13763609: 
conv2d_60_13763611:,
conv2d_61_13763614: 
conv2d_61_13763616:,
conv2d_62_13763619: 
conv2d_62_13763621:!
xmean_13763625:	�
xmean_13763627:
identity��!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_20/PartitionedCallPartitionedCall	input_154*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������" * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13763364�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_20/PartitionedCall:output:0conv2d_60_13763609conv2d_60_13763611*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13763386�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_13763614conv2d_61_13763616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13763403�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_62_13763619conv2d_62_13763621*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13763420�
flatten_20/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_20_layer_call_and_return_conditional_losses_13763432�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0xmean_13763625xmean_13763627*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_xmean_layer_call_and_return_conditional_losses_13763444u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_154
�
�	
+__inference_model_35_layer_call_fn_13765612
	input_158
	input_159
	input_160!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:	
	unknown_8:	
	unknown_9:@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:	�@

unknown_28:@

unknown_29:@

unknown_30:

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: 

unknown_36: 

unknown_37: 

unknown_38: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_158	input_159	input_160unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*6
Tin/
-2+*
Tout

2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:���������  : : : : *@
_read_only_resource_inputs"
 	
 !"*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_35_layer_call_and_return_conditional_losses_13765428o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������u

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:���������  `

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_158:RN
'
_output_shapes
:���������
#
_user_specified_name	input_159:RN
'
_output_shapes
:���������
#
_user_specified_name	input_160
�

�
G__inference_dense_242_layer_call_and_return_conditional_losses_13768552

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
Drandom_flip_41_map_while_stateless_random_flip_up_down_true_13767422�
�random_flip_41_map_while_stateless_random_flip_up_down_reversev2_random_flip_41_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_41_map_while_stateless_random_flip_up_down_identity�
Erandom_flip_41/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
@random_flip_41/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�random_flip_41_map_while_stateless_random_flip_up_down_reversev2_random_flip_41_map_while_stateless_random_flip_up_down_control_dependencyNrandom_flip_41/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
?random_flip_41/map/while/stateless_random_flip_up_down/IdentityIdentityIrandom_flip_41/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
?random_flip_41_map_while_stateless_random_flip_up_down_identityHrandom_flip_41/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�	
�
Grandom_flip_40_map_while_stateless_random_flip_left_right_true_13767219�
�random_flip_40_map_while_stateless_random_flip_left_right_reversev2_random_flip_40_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_40_map_while_stateless_random_flip_left_right_identity�
Hrandom_flip_40/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Crandom_flip_40/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�random_flip_40_map_while_stateless_random_flip_left_right_reversev2_random_flip_40_map_while_stateless_random_flip_left_right_control_dependencyQrandom_flip_40/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
Brandom_flip_40/map/while/stateless_random_flip_left_right/IdentityIdentityLrandom_flip_40/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
Brandom_flip_40_map_while_stateless_random_flip_left_right_identityKrandom_flip_40/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
4sequential_20_random_flip_40_map_while_cond_13766449^
Zsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_while_loop_counterY
Usequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice6
2sequential_20_random_flip_40_map_while_placeholder8
4sequential_20_random_flip_40_map_while_placeholder_1^
Zsequential_20_random_flip_40_map_while_less_sequential_20_random_flip_40_map_strided_slicex
tsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_while_cond_13766449___redundant_placeholder0x
tsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_while_cond_13766449___redundant_placeholder13
/sequential_20_random_flip_40_map_while_identity
�
+sequential_20/random_flip_40/map/while/LessLess2sequential_20_random_flip_40_map_while_placeholderZsequential_20_random_flip_40_map_while_less_sequential_20_random_flip_40_map_strided_slice*
T0*
_output_shapes
: �
-sequential_20/random_flip_40/map/while/Less_1LessZsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_while_loop_counterUsequential_20_random_flip_40_map_while_sequential_20_random_flip_40_map_strided_slice*
T0*
_output_shapes
: �
1sequential_20/random_flip_40/map/while/LogicalAnd
LogicalAnd1sequential_20/random_flip_40/map/while/Less_1:z:0/sequential_20/random_flip_40/map/while/Less:z:0*
_output_shapes
: �
/sequential_20/random_flip_40/map/while/IdentityIdentity5sequential_20/random_flip_40/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "k
/sequential_20_random_flip_40_map_while_identity8sequential_20/random_flip_40/map/while/Identity:output:0*(
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
�
�
D__inference_precip_layer_call_and_return_conditional_losses_13764163

inputs%
dense_248_13764090:	�!
dense_248_13764092:	�&
dense_249_13764107:
��!
dense_249_13764109:	�&
dense_250_13764124:
��!
dense_250_13764126:	�%
dense_251_13764141:	�@ 
dense_251_13764143:@!
precip_13764157:@
precip_13764159:
identity��!dense_248/StatefulPartitionedCall�!dense_249/StatefulPartitionedCall�!dense_250/StatefulPartitionedCall�!dense_251/StatefulPartitionedCall�precip/StatefulPartitionedCall�
!dense_248/StatefulPartitionedCallStatefulPartitionedCallinputsdense_248_13764090dense_248_13764092*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_248_layer_call_and_return_conditional_losses_13764089�
!dense_249/StatefulPartitionedCallStatefulPartitionedCall*dense_248/StatefulPartitionedCall:output:0dense_249_13764107dense_249_13764109*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_249_layer_call_and_return_conditional_losses_13764106�
!dense_250/StatefulPartitionedCallStatefulPartitionedCall*dense_249/StatefulPartitionedCall:output:0dense_250_13764124dense_250_13764126*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_250_layer_call_and_return_conditional_losses_13764123�
!dense_251/StatefulPartitionedCallStatefulPartitionedCall*dense_250/StatefulPartitionedCall:output:0dense_251_13764141dense_251_13764143*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_251_layer_call_and_return_conditional_losses_13764140�
precip/StatefulPartitionedCallStatefulPartitionedCall*dense_251/StatefulPartitionedCall:output:0precip_13764157precip_13764159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764156v
IdentityIdentity'precip/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_248/StatefulPartitionedCall"^dense_249/StatefulPartitionedCall"^dense_250/StatefulPartitionedCall"^dense_251/StatefulPartitionedCall^precip/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2F
!dense_249/StatefulPartitionedCall!dense_249/StatefulPartitionedCall2F
!dense_250/StatefulPartitionedCall!dense_250/StatefulPartitionedCall2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_xmean_layer_call_and_return_conditional_losses_13763444

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�*
�
F__inference_model_34_layer_call_and_return_conditional_losses_13767113

inputsB
(conv2d_60_conv2d_readvariableop_resource:7
)conv2d_60_biasadd_readvariableop_resource:B
(conv2d_61_conv2d_readvariableop_resource:7
)conv2d_61_biasadd_readvariableop_resource:B
(conv2d_62_conv2d_readvariableop_resource:7
)conv2d_62_biasadd_readvariableop_resource:7
$xmean_matmul_readvariableop_resource:	�3
%xmean_biasadd_readvariableop_resource:
identity�� conv2d_60/BiasAdd/ReadVariableOp�conv2d_60/Conv2D/ReadVariableOp� conv2d_61/BiasAdd/ReadVariableOp�conv2d_61/Conv2D/ReadVariableOp� conv2d_62/BiasAdd/ReadVariableOp�conv2d_62/Conv2D/ReadVariableOp�xmean/BiasAdd/ReadVariableOp�xmean/MatMul/ReadVariableOp�
zero_padding2d_20/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
zero_padding2d_20/PadPadinputs'zero_padding2d_20/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_60/Conv2DConv2Dzero_padding2d_20/Pad:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_61/Conv2DConv2Dconv2d_60/Relu:activations:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	l
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_62/Conv2DConv2Dconv2d_61/Relu:activations:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������a
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_20/ReshapeReshapeconv2d_62/Relu:activations:0flatten_20/Const:output:0*
T0*(
_output_shapes
:�����������
xmean/MatMul/ReadVariableOpReadVariableOp$xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
xmean/MatMulMatMulflatten_20/Reshape:output:0#xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
xmean/BiasAdd/ReadVariableOpReadVariableOp%xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
xmean/BiasAddBiasAddxmean/MatMul:product:0$xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
IdentityIdentityxmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp^xmean/BiasAdd/ReadVariableOp^xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2<
xmean/BiasAdd/ReadVariableOpxmean/BiasAdd/ReadVariableOp2:
xmean/MatMul/ReadVariableOpxmean/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13767975

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������" : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������" 
 
_user_specified_nameinputs
�
�
,__inference_dense_251_layer_call_fn_13768462

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_251_layer_call_and_return_conditional_losses_13764140o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
map_while_cond_13768076$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice>
:map_while_map_while_cond_13768076___redundant_placeholder0>
:map_while_map_while_cond_13768076___redundant_placeholder1
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
�
�
8map_while_stateless_random_flip_left_right_true_13763763v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
&random_flip_40_map_while_cond_13767159B
>random_flip_40_map_while_random_flip_40_map_while_loop_counter=
9random_flip_40_map_while_random_flip_40_map_strided_slice(
$random_flip_40_map_while_placeholder*
&random_flip_40_map_while_placeholder_1B
>random_flip_40_map_while_less_random_flip_40_map_strided_slice\
Xrandom_flip_40_map_while_random_flip_40_map_while_cond_13767159___redundant_placeholder0\
Xrandom_flip_40_map_while_random_flip_40_map_while_cond_13767159___redundant_placeholder1%
!random_flip_40_map_while_identity
�
random_flip_40/map/while/LessLess$random_flip_40_map_while_placeholder>random_flip_40_map_while_less_random_flip_40_map_strided_slice*
T0*
_output_shapes
: �
random_flip_40/map/while/Less_1Less>random_flip_40_map_while_random_flip_40_map_while_loop_counter9random_flip_40_map_while_random_flip_40_map_strided_slice*
T0*
_output_shapes
: �
#random_flip_40/map/while/LogicalAnd
LogicalAnd#random_flip_40/map/while/Less_1:z:0!random_flip_40/map/while/Less:z:0*
_output_shapes
: w
!random_flip_40/map/while/IdentityIdentity'random_flip_40/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "O
!random_flip_40_map_while_identity*random_flip_40/map/while/Identity:output:0*(
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
�
�
6map_while_stateless_random_flip_up_down_false_13768360o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
g
K__inference_sequential_20_layer_call_and_return_conditional_losses_13763677

inputs
identity�
random_flip_40/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13763668�
random_flip_41/PartitionedCallPartitionedCall'random_flip_40/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763674w
IdentityIdentity'random_flip_41/PartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
.__inference_precip_loss_layer_call_fn_13767759
inputs_pred
inputs_true
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_predinputs_trueunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:���������: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_precip_loss_layer_call_and_return_conditional_losses_13765077o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/pred:TP
'
_output_shapes
:���������
%
_user_specified_nameinputs/true
�
�
*__inference_hr_loss_layer_call_fn_13767821
inputs_pred
inputs_true
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_predinputs_trueunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������  : * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_hr_loss_layer_call_and_return_conditional_losses_13765019s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������  :���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:���������  
%
_user_specified_nameinputs/pred:\X
/
_output_shapes
:���������  
%
_user_specified_nameinputs/true
�	
�
C__inference_xmean_layer_call_and_return_conditional_losses_13768045

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_model_34_layer_call_and_return_conditional_losses_13763657
	input_154,
conv2d_60_13763635: 
conv2d_60_13763637:,
conv2d_61_13763640: 
conv2d_61_13763642:,
conv2d_62_13763645: 
conv2d_62_13763647:!
xmean_13763651:	�
xmean_13763653:
identity��!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_20/PartitionedCallPartitionedCall	input_154*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������" * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13763364�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_20/PartitionedCall:output:0conv2d_60_13763635conv2d_60_13763637*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13763386�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_13763640conv2d_61_13763642*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13763403�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_62_13763645conv2d_62_13763647*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13763420�
flatten_20/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_20_layer_call_and_return_conditional_losses_13763432�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0xmean_13763651xmean_13763653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_xmean_layer_call_and_return_conditional_losses_13763444u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_154
�

�
G__inference_dense_248_layer_call_and_return_conditional_losses_13764089

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13763403

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_model_34_layer_call_and_return_conditional_losses_13763451

inputs,
conv2d_60_13763387: 
conv2d_60_13763389:,
conv2d_61_13763404: 
conv2d_61_13763406:,
conv2d_62_13763421: 
conv2d_62_13763423:!
xmean_13763445:	�
xmean_13763447:
identity��!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_20/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������" * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13763364�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_20/PartitionedCall:output:0conv2d_60_13763387conv2d_60_13763389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13763386�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0conv2d_61_13763404conv2d_61_13763406*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13763403�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0conv2d_62_13763421conv2d_62_13763423*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13763420�
flatten_20/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_20_layer_call_and_return_conditional_losses_13763432�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_20/PartitionedCall:output:0xmean_13763445xmean_13763447*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_xmean_layer_call_and_return_conditional_losses_13763444u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�$
�
E__inference_reconst_layer_call_and_return_conditional_losses_13764681

inputs$
dense_240_13764649:@ 
dense_240_13764651:@%
dense_241_13764654:	@�!
dense_241_13764656:	�&
dense_242_13764659:
��!
dense_242_13764661:	�&
dense_243_13764664:
��!
dense_243_13764666:	�&
dense_244_13764669:
��!
dense_244_13764671:	�&
dense_245_13764674:
��!
dense_245_13764676:	�
identity��!dense_240/StatefulPartitionedCall�!dense_241/StatefulPartitionedCall�!dense_242/StatefulPartitionedCall�!dense_243/StatefulPartitionedCall�!dense_244/StatefulPartitionedCall�!dense_245/StatefulPartitionedCall�
!dense_240/StatefulPartitionedCallStatefulPartitionedCallinputsdense_240_13764649dense_240_13764651*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_240_layer_call_and_return_conditional_losses_13764416�
!dense_241/StatefulPartitionedCallStatefulPartitionedCall*dense_240/StatefulPartitionedCall:output:0dense_241_13764654dense_241_13764656*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_241_layer_call_and_return_conditional_losses_13764433�
!dense_242/StatefulPartitionedCallStatefulPartitionedCall*dense_241/StatefulPartitionedCall:output:0dense_242_13764659dense_242_13764661*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_242_layer_call_and_return_conditional_losses_13764450�
!dense_243/StatefulPartitionedCallStatefulPartitionedCall*dense_242/StatefulPartitionedCall:output:0dense_243_13764664dense_243_13764666*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_243_layer_call_and_return_conditional_losses_13764467�
!dense_244/StatefulPartitionedCallStatefulPartitionedCall*dense_243/StatefulPartitionedCall:output:0dense_244_13764669dense_244_13764671*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_244_layer_call_and_return_conditional_losses_13764484�
!dense_245/StatefulPartitionedCallStatefulPartitionedCall*dense_244/StatefulPartitionedCall:output:0dense_245_13764674dense_245_13764676*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_245_layer_call_and_return_conditional_losses_13764500�
Reconst/PartitionedCallPartitionedCall*dense_245/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Reconst_layer_call_and_return_conditional_losses_13764519s
IdentityIdentity Reconst/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  �
NoOpNoOp"^dense_240/StatefulPartitionedCall"^dense_241/StatefulPartitionedCall"^dense_242/StatefulPartitionedCall"^dense_243/StatefulPartitionedCall"^dense_244/StatefulPartitionedCall"^dense_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2F
!dense_240/StatefulPartitionedCall!dense_240/StatefulPartitionedCall2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2F
!dense_244/StatefulPartitionedCall!dense_244/StatefulPartitionedCall2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
8map_while_stateless_random_flip_left_right_true_13763934v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
d
H__inference_flatten_20_layer_call_and_return_conditional_losses_13768026

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
map_while_body_13768077$
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
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
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
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *L
else_branch=R;
9map_while_stateless_random_flip_left_right_false_13768137*!
output_shapes
:  *K
then_branch<R:
8map_while_stateless_random_flip_left_right_true_13768136�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_up_down_false_13768186*!
output_shapes
:  *H
then_branch9R7
5map_while_stateless_random_flip_up_down_true_13768185�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
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
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
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
�
�	
+__inference_model_35_layer_call_fn_13766015
inputs_0
inputs_1
inputs_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:@
	unknown_8:@
	unknown_9:	@�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:
��

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�@

unknown_26:@

unknown_27:@

unknown_28:

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: 

unknown_36: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*4
Tin-
+2)*
Tout

2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:���������  : : : : *@
_read_only_resource_inputs"
 	
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_35_layer_call_and_return_conditional_losses_13765090o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������u

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:���������  `

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������  
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�<
�
E__inference_hr_loss_layer_call_and_return_conditional_losses_13765019

inputs
inputs_1&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: 

identity_1

identity_2��AssignAddVariableOp�AssignAddVariableOp_1�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1�
7mean_squared_error/remove_squeezable_dimensions/SqueezeSqueezeinputs_1*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
$mean_squared_error/SquaredDifferenceSquaredDifferenceinputs@mean_squared_error/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  t
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� k
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� y
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
-mean_squared_error/weighted_loss/num_elementsSize(mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
mulMulmul/x:output:0*mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
9mean_squared_error_1/remove_squeezable_dimensions/SqueezeSqueezeinputs_1*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
&mean_squared_error_1/SquaredDifferenceSquaredDifferenceinputsBmean_squared_error_1/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  v
+mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error_1/MeanMean*mean_squared_error_1/SquaredDifference:z:04mean_squared_error_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� m
(mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&mean_squared_error_1/weighted_loss/MulMul"mean_squared_error_1/Mean:output:01mean_squared_error_1/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� {
*mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&mean_squared_error_1/weighted_loss/SumSum*mean_squared_error_1/weighted_loss/Mul:z:03mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
/mean_squared_error_1/weighted_loss/num_elementsSize*mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
4mean_squared_error_1/weighted_loss/num_elements/CastCast8mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: i
'mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
(mean_squared_error_1/weighted_loss/rangeRange7mean_squared_error_1/weighted_loss/range/start:output:00mean_squared_error_1/weighted_loss/Rank:output:07mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/Sum_1Sum/mean_squared_error_1/weighted_loss/Sum:output:01mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/valueDivNoNan1mean_squared_error_1/weighted_loss/Sum_1:output:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: i
SumSum,mean_squared_error_1/weighted_loss/value:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: [

Identity_1Identityinputs^NoOp*
T0*+
_output_shapes
:���������  G

Identity_2Identitymul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������  :���������  : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_1:S O
+
_output_shapes
:���������  
 
_user_specified_nameinputs:WS
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
4sequential_20_random_flip_41_map_while_cond_13766603^
Zsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_while_loop_counterY
Usequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice6
2sequential_20_random_flip_41_map_while_placeholder8
4sequential_20_random_flip_41_map_while_placeholder_1^
Zsequential_20_random_flip_41_map_while_less_sequential_20_random_flip_41_map_strided_slicex
tsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_while_cond_13766603___redundant_placeholder0x
tsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_while_cond_13766603___redundant_placeholder13
/sequential_20_random_flip_41_map_while_identity
�
+sequential_20/random_flip_41/map/while/LessLess2sequential_20_random_flip_41_map_while_placeholderZsequential_20_random_flip_41_map_while_less_sequential_20_random_flip_41_map_strided_slice*
T0*
_output_shapes
: �
-sequential_20/random_flip_41/map/while/Less_1LessZsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_while_loop_counterUsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice*
T0*
_output_shapes
: �
1sequential_20/random_flip_41/map/while/LogicalAnd
LogicalAnd1sequential_20/random_flip_41/map/while/Less_1:z:0/sequential_20/random_flip_41/map/while/Less:z:0*
_output_shapes
: �
/sequential_20/random_flip_41/map/while/IdentityIdentity5sequential_20/random_flip_41/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "k
/sequential_20_random_flip_41_map_while_identity8sequential_20/random_flip_41/map/while/Identity:output:0*(
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
�
�
D__inference_precip_layer_call_and_return_conditional_losses_13764398
	input_157%
dense_248_13764372:	�!
dense_248_13764374:	�&
dense_249_13764377:
��!
dense_249_13764379:	�&
dense_250_13764382:
��!
dense_250_13764384:	�%
dense_251_13764387:	�@ 
dense_251_13764389:@!
precip_13764392:@
precip_13764394:
identity��!dense_248/StatefulPartitionedCall�!dense_249/StatefulPartitionedCall�!dense_250/StatefulPartitionedCall�!dense_251/StatefulPartitionedCall�precip/StatefulPartitionedCall�
!dense_248/StatefulPartitionedCallStatefulPartitionedCall	input_157dense_248_13764372dense_248_13764374*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_248_layer_call_and_return_conditional_losses_13764089�
!dense_249/StatefulPartitionedCallStatefulPartitionedCall*dense_248/StatefulPartitionedCall:output:0dense_249_13764377dense_249_13764379*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_249_layer_call_and_return_conditional_losses_13764106�
!dense_250/StatefulPartitionedCallStatefulPartitionedCall*dense_249/StatefulPartitionedCall:output:0dense_250_13764382dense_250_13764384*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_250_layer_call_and_return_conditional_losses_13764123�
!dense_251/StatefulPartitionedCallStatefulPartitionedCall*dense_250/StatefulPartitionedCall:output:0dense_251_13764387dense_251_13764389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_251_layer_call_and_return_conditional_losses_13764140�
precip/StatefulPartitionedCallStatefulPartitionedCall*dense_251/StatefulPartitionedCall:output:0precip_13764392precip_13764394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764156v
IdentityIdentity'precip/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_248/StatefulPartitionedCall"^dense_249/StatefulPartitionedCall"^dense_250/StatefulPartitionedCall"^dense_251/StatefulPartitionedCall^precip/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2F
!dense_249/StatefulPartitionedCall!dense_249/StatefulPartitionedCall2F
!dense_250/StatefulPartitionedCall!dense_250/StatefulPartitionedCall2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_157
�
�
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13768015

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
8map_while_stateless_random_flip_left_right_true_13768136v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
,__inference_dense_248_layer_call_fn_13768402

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_248_layer_call_and_return_conditional_losses_13764089p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
Drandom_flip_40_map_while_stateless_random_flip_up_down_true_13767268�
�random_flip_40_map_while_stateless_random_flip_up_down_reversev2_random_flip_40_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_40_map_while_stateless_random_flip_up_down_identity�
Erandom_flip_40/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
@random_flip_40/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�random_flip_40_map_while_stateless_random_flip_up_down_reversev2_random_flip_40_map_while_stateless_random_flip_up_down_control_dependencyNrandom_flip_40/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
?random_flip_40/map/while/stateless_random_flip_up_down/IdentityIdentityIrandom_flip_40/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
?random_flip_40_map_while_stateless_random_flip_up_down_identityHrandom_flip_40/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764071
random_flip_40_input%
random_flip_40_13764064:	%
random_flip_41_13764067:	
identity��&random_flip_40/StatefulPartitionedCall�&random_flip_41/StatefulPartitionedCall�
&random_flip_40/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_40_inputrandom_flip_40_13764064*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13764017�
&random_flip_41/StatefulPartitionedCallStatefulPartitionedCall/random_flip_40/StatefulPartitionedCall:output:0random_flip_41_13764067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763846�
IdentityIdentity/random_flip_41/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp'^random_flip_40/StatefulPartitionedCall'^random_flip_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 2P
&random_flip_40/StatefulPartitionedCall&random_flip_40/StatefulPartitionedCall2P
&random_flip_41/StatefulPartitionedCall&random_flip_41/StatefulPartitionedCall:e a
/
_output_shapes
:���������  
.
_user_specified_namerandom_flip_40_input
�>
�	
E__inference_reconst_layer_call_and_return_conditional_losses_13767748

inputs:
(dense_240_matmul_readvariableop_resource:@7
)dense_240_biasadd_readvariableop_resource:@;
(dense_241_matmul_readvariableop_resource:	@�8
)dense_241_biasadd_readvariableop_resource:	�<
(dense_242_matmul_readvariableop_resource:
��8
)dense_242_biasadd_readvariableop_resource:	�<
(dense_243_matmul_readvariableop_resource:
��8
)dense_243_biasadd_readvariableop_resource:	�<
(dense_244_matmul_readvariableop_resource:
��8
)dense_244_biasadd_readvariableop_resource:	�<
(dense_245_matmul_readvariableop_resource:
��8
)dense_245_biasadd_readvariableop_resource:	�
identity�� dense_240/BiasAdd/ReadVariableOp�dense_240/MatMul/ReadVariableOp� dense_241/BiasAdd/ReadVariableOp�dense_241/MatMul/ReadVariableOp� dense_242/BiasAdd/ReadVariableOp�dense_242/MatMul/ReadVariableOp� dense_243/BiasAdd/ReadVariableOp�dense_243/MatMul/ReadVariableOp� dense_244/BiasAdd/ReadVariableOp�dense_244/MatMul/ReadVariableOp� dense_245/BiasAdd/ReadVariableOp�dense_245/MatMul/ReadVariableOp�
dense_240/MatMul/ReadVariableOpReadVariableOp(dense_240_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0}
dense_240/MatMulMatMulinputs'dense_240/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
 dense_240/BiasAdd/ReadVariableOpReadVariableOp)dense_240_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_240/BiasAddBiasAdddense_240/MatMul:product:0(dense_240/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_240/ReluReludense_240/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_241/MatMul/ReadVariableOpReadVariableOp(dense_241_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_241/MatMulMatMuldense_240/Relu:activations:0'dense_241/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_241/BiasAdd/ReadVariableOpReadVariableOp)dense_241_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_241/BiasAddBiasAdddense_241/MatMul:product:0(dense_241/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_241/ReluReludense_241/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_242/MatMul/ReadVariableOpReadVariableOp(dense_242_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_242/MatMulMatMuldense_241/Relu:activations:0'dense_242/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_242/BiasAdd/ReadVariableOpReadVariableOp)dense_242_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_242/BiasAddBiasAdddense_242/MatMul:product:0(dense_242/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_242/ReluReludense_242/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_243/MatMul/ReadVariableOpReadVariableOp(dense_243_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_243/MatMulMatMuldense_242/Relu:activations:0'dense_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_243/BiasAdd/ReadVariableOpReadVariableOp)dense_243_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_243/BiasAddBiasAdddense_243/MatMul:product:0(dense_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_243/ReluReludense_243/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_244/MatMul/ReadVariableOpReadVariableOp(dense_244_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_244/MatMulMatMuldense_243/Relu:activations:0'dense_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_244/BiasAdd/ReadVariableOpReadVariableOp)dense_244_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_244/BiasAddBiasAdddense_244/MatMul:product:0(dense_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_244/ReluReludense_244/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_245/MatMul/ReadVariableOpReadVariableOp(dense_245_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_245/MatMulMatMuldense_244/Relu:activations:0'dense_245/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_245/BiasAdd/ReadVariableOpReadVariableOp)dense_245_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_245/BiasAddBiasAdddense_245/MatMul:product:0(dense_245/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
Reconst/ShapeShapedense_245/BiasAdd:output:0*
T0*
_output_shapes
:e
Reconst/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Reconst/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Reconst/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Reconst/strided_sliceStridedSliceReconst/Shape:output:0$Reconst/strided_slice/stack:output:0&Reconst/strided_slice/stack_1:output:0&Reconst/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Reconst/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : Y
Reconst/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reconst/Reshape/shapePackReconst/strided_slice:output:0 Reconst/Reshape/shape/1:output:0 Reconst/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
Reconst/ReshapeReshapedense_245/BiasAdd:output:0Reconst/Reshape/shape:output:0*
T0*+
_output_shapes
:���������  k
IdentityIdentityReconst/Reshape:output:0^NoOp*
T0*+
_output_shapes
:���������  �
NoOpNoOp!^dense_240/BiasAdd/ReadVariableOp ^dense_240/MatMul/ReadVariableOp!^dense_241/BiasAdd/ReadVariableOp ^dense_241/MatMul/ReadVariableOp!^dense_242/BiasAdd/ReadVariableOp ^dense_242/MatMul/ReadVariableOp!^dense_243/BiasAdd/ReadVariableOp ^dense_243/MatMul/ReadVariableOp!^dense_244/BiasAdd/ReadVariableOp ^dense_244/MatMul/ReadVariableOp!^dense_245/BiasAdd/ReadVariableOp ^dense_245/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2D
 dense_240/BiasAdd/ReadVariableOp dense_240/BiasAdd/ReadVariableOp2B
dense_240/MatMul/ReadVariableOpdense_240/MatMul/ReadVariableOp2D
 dense_241/BiasAdd/ReadVariableOp dense_241/BiasAdd/ReadVariableOp2B
dense_241/MatMul/ReadVariableOpdense_241/MatMul/ReadVariableOp2D
 dense_242/BiasAdd/ReadVariableOp dense_242/BiasAdd/ReadVariableOp2B
dense_242/MatMul/ReadVariableOpdense_242/MatMul/ReadVariableOp2D
 dense_243/BiasAdd/ReadVariableOp dense_243/BiasAdd/ReadVariableOp2B
dense_243/MatMul/ReadVariableOpdense_243/MatMul/ReadVariableOp2D
 dense_244/BiasAdd/ReadVariableOp dense_244/BiasAdd/ReadVariableOp2B
dense_244/MatMul/ReadVariableOpdense_244/MatMul/ReadVariableOp2D
 dense_245/BiasAdd/ReadVariableOp dense_245/BiasAdd/ReadVariableOp2B
dense_245/MatMul/ReadVariableOpdense_245/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
k
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13763364

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
D__inference_precip_layer_call_and_return_conditional_losses_13764156

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
G__inference_dense_251_layer_call_and_return_conditional_losses_13764140

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5map_while_stateless_random_flip_up_down_true_13763812p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
9map_while_stateless_random_flip_left_right_false_13763935u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
I
-__inference_flatten_20_layer_call_fn_13768020

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_20_layer_call_and_return_conditional_losses_13763432a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
]
1__inference_concatenate_18_layer_call_fn_13767119
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13764843`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�

�
G__inference_dense_249_layer_call_and_return_conditional_losses_13764106

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6map_while_stateless_random_flip_up_down_false_13768186o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
D__inference_precip_layer_call_and_return_conditional_losses_13764292

inputs%
dense_248_13764266:	�!
dense_248_13764268:	�&
dense_249_13764271:
��!
dense_249_13764273:	�&
dense_250_13764276:
��!
dense_250_13764278:	�%
dense_251_13764281:	�@ 
dense_251_13764283:@!
precip_13764286:@
precip_13764288:
identity��!dense_248/StatefulPartitionedCall�!dense_249/StatefulPartitionedCall�!dense_250/StatefulPartitionedCall�!dense_251/StatefulPartitionedCall�precip/StatefulPartitionedCall�
!dense_248/StatefulPartitionedCallStatefulPartitionedCallinputsdense_248_13764266dense_248_13764268*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_248_layer_call_and_return_conditional_losses_13764089�
!dense_249/StatefulPartitionedCallStatefulPartitionedCall*dense_248/StatefulPartitionedCall:output:0dense_249_13764271dense_249_13764273*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_249_layer_call_and_return_conditional_losses_13764106�
!dense_250/StatefulPartitionedCallStatefulPartitionedCall*dense_249/StatefulPartitionedCall:output:0dense_250_13764276dense_250_13764278*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_250_layer_call_and_return_conditional_losses_13764123�
!dense_251/StatefulPartitionedCallStatefulPartitionedCall*dense_250/StatefulPartitionedCall:output:0dense_251_13764281dense_251_13764283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_251_layer_call_and_return_conditional_losses_13764140�
precip/StatefulPartitionedCallStatefulPartitionedCall*dense_251/StatefulPartitionedCall:output:0precip_13764286precip_13764288*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764156v
IdentityIdentity'precip/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_248/StatefulPartitionedCall"^dense_249/StatefulPartitionedCall"^dense_250/StatefulPartitionedCall"^dense_251/StatefulPartitionedCall^precip/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2F
!dense_249/StatefulPartitionedCall!dense_249/StatefulPartitionedCall2F
!dense_250/StatefulPartitionedCall!dense_250/StatefulPartitionedCall2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
Grandom_flip_41_map_while_stateless_random_flip_left_right_true_13767373�
�random_flip_41_map_while_stateless_random_flip_left_right_reversev2_random_flip_41_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_41_map_while_stateless_random_flip_left_right_identity�
Hrandom_flip_41/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Crandom_flip_41/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�random_flip_41_map_while_stateless_random_flip_left_right_reversev2_random_flip_41_map_while_stateless_random_flip_left_right_control_dependencyQrandom_flip_41/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
Brandom_flip_41/map/while/stateless_random_flip_left_right/IdentityIdentityLrandom_flip_41/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
Brandom_flip_41_map_while_stateless_random_flip_left_right_identityKrandom_flip_41/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
P
4__inference_zero_padding2d_20_layer_call_fn_13767949

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13763364�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
map_while_body_13763704$
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
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
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
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *L
else_branch=R;
9map_while_stateless_random_flip_left_right_false_13763764*!
output_shapes
:  *K
then_branch<R:
8map_while_stateless_random_flip_left_right_true_13763763�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_up_down_false_13763813*!
output_shapes
:  *H
then_branch9R7
5map_while_stateless_random_flip_up_down_true_13763812�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
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
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
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
�
�
)__inference_precip_layer_call_fn_13768482

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764156o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
4sequential_20_random_flip_41_map_while_body_13766604^
Zsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_while_loop_counterY
Usequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice6
2sequential_20_random_flip_41_map_while_placeholder8
4sequential_20_random_flip_41_map_while_placeholder_1]
Ysequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice_1_0�
�sequential_20_random_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_41_map_tensorarrayunstack_tensorlistfromtensor_0h
Zsequential_20_random_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	3
/sequential_20_random_flip_41_map_while_identity5
1sequential_20_random_flip_41_map_while_identity_15
1sequential_20_random_flip_41_map_while_identity_25
1sequential_20_random_flip_41_map_while_identity_3[
Wsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice_1�
�sequential_20_random_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_41_map_tensorarrayunstack_tensorlistfromtensorf
Xsequential_20_random_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��Osequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip�Qsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Xsequential_20/random_flip_41/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
Jsequential_20/random_flip_41/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_20_random_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_41_map_tensorarrayunstack_tensorlistfromtensor_02sequential_20_random_flip_41_map_while_placeholderasequential_20/random_flip_41/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
element_dtype0�
Fsequential_20/random_flip_41/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Fsequential_20/random_flip_41/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_20/random_flip_41/map/while/stateful_uniform_full_int/ProdProdOsequential_20/random_flip_41/map/while/stateful_uniform_full_int/shape:output:0Osequential_20/random_flip_41/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: �
Gsequential_20/random_flip_41/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Gsequential_20/random_flip_41/map/while/stateful_uniform_full_int/Cast_1CastNsequential_20/random_flip_41/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Osequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipZsequential_20_random_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Psequential_20/random_flip_41/map/while/stateful_uniform_full_int/Cast/x:output:0Ksequential_20/random_flip_41/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Tsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Vsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Nsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_sliceStridedSliceWsequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack:output:0_sequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0_sequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Hsequential_20/random_flip_41/map/while/stateful_uniform_full_int/BitcastBitcastWsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Vsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Psequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceWsequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0_sequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0asequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0asequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Jsequential_20/random_flip_41/map/while/stateful_uniform_full_int/Bitcast_1BitcastYsequential_20/random_flip_41/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Dsequential_20/random_flip_41/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
@sequential_20/random_flip_41/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Osequential_20/random_flip_41/map/while/stateful_uniform_full_int/shape:output:0Ssequential_20/random_flip_41/map/while/stateful_uniform_full_int/Bitcast_1:output:0Qsequential_20/random_flip_41/map/while/stateful_uniform_full_int/Bitcast:output:0Msequential_20/random_flip_41/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	{
1sequential_20/random_flip_41/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
,sequential_20/random_flip_41/map/while/stackPackIsequential_20/random_flip_41/map/while/stateful_uniform_full_int:output:0:sequential_20/random_flip_41/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:�
:sequential_20/random_flip_41/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
<sequential_20/random_flip_41/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
<sequential_20/random_flip_41/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
4sequential_20/random_flip_41/map/while/strided_sliceStridedSlice5sequential_20/random_flip_41/map/while/stack:output:0Csequential_20/random_flip_41/map/while/strided_slice/stack:output:0Esequential_20/random_flip_41/map/while/strided_slice/stack_1:output:0Esequential_20/random_flip_41/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Zsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/control_dependencyIdentityQsequential_20/random_flip_41/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*]
_classS
QOloc:@sequential_20/random_flip_41/map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
fsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
dsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
dsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
}sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter=sequential_20/random_flip_41/map/while/strided_slice:output:0* 
_output_shapes
::�
}sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
ysequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2osequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0�sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
dsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubmsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0msequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
dsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMul�sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0hsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
`sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2hsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0msequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Nsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Lsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/LessLessdsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Wsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
Gsequential_20/random_flip_41/map/while/stateless_random_flip_left_rightStatelessIfPsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/Less:z:0csequential_20/random_flip_41/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *i
else_branchZRX
Vsequential_20_random_flip_41_map_while_stateless_random_flip_left_right_false_13766664*!
output_shapes
:  *h
then_branchYRW
Usequential_20_random_flip_41_map_while_stateless_random_flip_left_right_true_13766663�
Psequential_20/random_flip_41/map/while/stateless_random_flip_left_right/IdentityIdentityPsequential_20/random_flip_41/map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  �
Hsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Hsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Gsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/ProdProdQsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/shape:output:0Qsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: �
Isequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Isequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Cast_1CastPsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Qsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipZsequential_20_random_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Rsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Cast/x:output:0Msequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Cast_1:y:0P^sequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Vsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Xsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Xsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Psequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceYsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0_sequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0asequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0asequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Jsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/BitcastBitcastYsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Xsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceYsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0asequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0csequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0csequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Lsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast[sequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Fsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
Bsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Qsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/shape:output:0Usequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Ssequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/Bitcast:output:0Osequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	}
3sequential_20/random_flip_41/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
.sequential_20/random_flip_41/map/while/stack_1PackKsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1:output:0<sequential_20/random_flip_41/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:�
<sequential_20/random_flip_41/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>sequential_20/random_flip_41/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>sequential_20/random_flip_41/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6sequential_20/random_flip_41/map/while/strided_slice_1StridedSlice7sequential_20/random_flip_41/map/while/stack_1:output:0Esequential_20/random_flip_41/map/while/strided_slice_1/stack:output:0Gsequential_20/random_flip_41/map/while/strided_slice_1/stack_1:output:0Gsequential_20/random_flip_41/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Wsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/control_dependencyIdentityYsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*c
_classY
WUloc:@sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
csequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
asequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
asequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter?sequential_20/random_flip_41/map/while/strided_slice_1:output:0* 
_output_shapes
::�
zsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
vsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2lsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0�sequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
asequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubjsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0jsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
asequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0esequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
]sequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2esequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0jsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Ksequential_20/random_flip_41/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Isequential_20/random_flip_41/map/while/stateless_random_flip_up_down/LessLessasequential_20/random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Tsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
Dsequential_20/random_flip_41/map/while/stateless_random_flip_up_downStatelessIfMsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/Less:z:0`sequential_20/random_flip_41/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *f
else_branchWRU
Ssequential_20_random_flip_41_map_while_stateless_random_flip_up_down_false_13766713*!
output_shapes
:  *e
then_branchVRT
Rsequential_20_random_flip_41_map_while_stateless_random_flip_up_down_true_13766712�
Msequential_20/random_flip_41/map/while/stateless_random_flip_up_down/IdentityIdentityMsequential_20/random_flip_41/map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
Ksequential_20/random_flip_41/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4sequential_20_random_flip_41_map_while_placeholder_12sequential_20_random_flip_41_map_while_placeholderVsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���n
,sequential_20/random_flip_41/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
*sequential_20/random_flip_41/map/while/addAddV22sequential_20_random_flip_41_map_while_placeholder5sequential_20/random_flip_41/map/while/add/y:output:0*
T0*
_output_shapes
: p
.sequential_20/random_flip_41/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
,sequential_20/random_flip_41/map/while/add_1AddV2Zsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_while_loop_counter7sequential_20/random_flip_41/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
/sequential_20/random_flip_41/map/while/IdentityIdentity0sequential_20/random_flip_41/map/while/add_1:z:0,^sequential_20/random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
1sequential_20/random_flip_41/map/while/Identity_1IdentityUsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice,^sequential_20/random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
1sequential_20/random_flip_41/map/while/Identity_2Identity.sequential_20/random_flip_41/map/while/add:z:0,^sequential_20/random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
1sequential_20/random_flip_41/map/while/Identity_3Identity[sequential_20/random_flip_41/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^sequential_20/random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
+sequential_20/random_flip_41/map/while/NoOpNoOpP^sequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkipR^sequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "k
/sequential_20_random_flip_41_map_while_identity8sequential_20/random_flip_41/map/while/Identity:output:0"o
1sequential_20_random_flip_41_map_while_identity_1:sequential_20/random_flip_41/map/while/Identity_1:output:0"o
1sequential_20_random_flip_41_map_while_identity_2:sequential_20/random_flip_41/map/while/Identity_2:output:0"o
1sequential_20_random_flip_41_map_while_identity_3:sequential_20/random_flip_41/map/while/Identity_3:output:0"�
Wsequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice_1Ysequential_20_random_flip_41_map_while_sequential_20_random_flip_41_map_strided_slice_1_0"�
Xsequential_20_random_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resourceZsequential_20_random_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
�sequential_20_random_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_41_map_tensorarrayunstack_tensorlistfromtensor�sequential_20_random_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_sequential_20_random_flip_41_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
Osequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkipOsequential_20/random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Qsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkipQsequential_20/random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 
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
�	
�
G__inference_dense_245_layer_call_and_return_conditional_losses_13768611

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
G__inference_dense_245_layer_call_and_return_conditional_losses_13764500

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
ϱ
�
&random_flip_41_map_while_body_13767314B
>random_flip_41_map_while_random_flip_41_map_while_loop_counter=
9random_flip_41_map_while_random_flip_41_map_strided_slice(
$random_flip_41_map_while_placeholder*
&random_flip_41_map_while_placeholder_1A
=random_flip_41_map_while_random_flip_41_map_strided_slice_1_0}
yrandom_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_41_map_tensorarrayunstack_tensorlistfromtensor_0Z
Lrandom_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	%
!random_flip_41_map_while_identity'
#random_flip_41_map_while_identity_1'
#random_flip_41_map_while_identity_2'
#random_flip_41_map_while_identity_3?
;random_flip_41_map_while_random_flip_41_map_strided_slice_1{
wrandom_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_41_map_tensorarrayunstack_tensorlistfromtensorX
Jrandom_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��Arandom_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip�Crandom_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Jrandom_flip_41/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
<random_flip_41/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemyrandom_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_41_map_tensorarrayunstack_tensorlistfromtensor_0$random_flip_41_map_while_placeholderSrandom_flip_41/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
element_dtype0�
8random_flip_41/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
8random_flip_41/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7random_flip_41/map/while/stateful_uniform_full_int/ProdProdArandom_flip_41/map/while/stateful_uniform_full_int/shape:output:0Arandom_flip_41/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: {
9random_flip_41/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
9random_flip_41/map/while/stateful_uniform_full_int/Cast_1Cast@random_flip_41/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Arandom_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipLrandom_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Brandom_flip_41/map/while/stateful_uniform_full_int/Cast/x:output:0=random_flip_41/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Frandom_flip_41/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Hrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@random_flip_41/map/while/stateful_uniform_full_int/strided_sliceStridedSliceIrandom_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Orandom_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Qrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Qrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
:random_flip_41/map/while/stateful_uniform_full_int/BitcastBitcastIrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Hrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Jrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceIrandom_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Qrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Srandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Srandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
<random_flip_41/map/while/stateful_uniform_full_int/Bitcast_1BitcastKrandom_flip_41/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0x
6random_flip_41/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
2random_flip_41/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Arandom_flip_41/map/while/stateful_uniform_full_int/shape:output:0Erandom_flip_41/map/while/stateful_uniform_full_int/Bitcast_1:output:0Crandom_flip_41/map/while/stateful_uniform_full_int/Bitcast:output:0?random_flip_41/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	m
#random_flip_41/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_41/map/while/stackPack;random_flip_41/map/while/stateful_uniform_full_int:output:0,random_flip_41/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:}
,random_flip_41/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.random_flip_41/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.random_flip_41/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&random_flip_41/map/while/strided_sliceStridedSlice'random_flip_41/map/while/stack:output:05random_flip_41/map/while/strided_slice/stack:output:07random_flip_41/map/while/strided_slice/stack_1:output:07random_flip_41/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Lrandom_flip_41/map/while/stateless_random_flip_left_right/control_dependencyIdentityCrandom_flip_41/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*O
_classE
CAloc:@random_flip_41/map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
Xrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Vrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Vrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
orandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/random_flip_41/map/while/strided_slice:output:0* 
_output_shapes
::�
orandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
krandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2arandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0urandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0yrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Vrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub_random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Vrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMultrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Rrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Zrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_random_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
@random_flip_41/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
>random_flip_41/map/while/stateless_random_flip_left_right/LessLessVrandom_flip_41/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Irandom_flip_41/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
9random_flip_41/map/while/stateless_random_flip_left_rightStatelessIfBrandom_flip_41/map/while/stateless_random_flip_left_right/Less:z:0Urandom_flip_41/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *[
else_branchLRJ
Hrandom_flip_41_map_while_stateless_random_flip_left_right_false_13767374*!
output_shapes
:  *Z
then_branchKRI
Grandom_flip_41_map_while_stateless_random_flip_left_right_true_13767373�
Brandom_flip_41/map/while/stateless_random_flip_left_right/IdentityIdentityBrandom_flip_41/map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  �
:random_flip_41/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
:random_flip_41/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9random_flip_41/map/while/stateful_uniform_full_int_1/ProdProdCrandom_flip_41/map/while/stateful_uniform_full_int_1/shape:output:0Crandom_flip_41/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: }
;random_flip_41/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
;random_flip_41/map/while/stateful_uniform_full_int_1/Cast_1CastBrandom_flip_41/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Crandom_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipLrandom_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Drandom_flip_41/map/while/stateful_uniform_full_int_1/Cast/x:output:0?random_flip_41/map/while/stateful_uniform_full_int_1/Cast_1:y:0B^random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Hrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Jrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip_41/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceKrandom_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Qrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Srandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Srandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
<random_flip_41/map/while/stateful_uniform_full_int_1/BitcastBitcastKrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Jrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Lrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Drandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceKrandom_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Srandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Urandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Urandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
>random_flip_41/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastMrandom_flip_41/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8random_flip_41/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
4random_flip_41/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Crandom_flip_41/map/while/stateful_uniform_full_int_1/shape:output:0Grandom_flip_41/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Erandom_flip_41/map/while/stateful_uniform_full_int_1/Bitcast:output:0Arandom_flip_41/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	o
%random_flip_41/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
 random_flip_41/map/while/stack_1Pack=random_flip_41/map/while/stateful_uniform_full_int_1:output:0.random_flip_41/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
.random_flip_41/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0random_flip_41/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0random_flip_41/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(random_flip_41/map/while/strided_slice_1StridedSlice)random_flip_41/map/while/stack_1:output:07random_flip_41/map/while/strided_slice_1/stack:output:09random_flip_41/map/while/strided_slice_1/stack_1:output:09random_flip_41/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Irandom_flip_41/map/while/stateless_random_flip_up_down/control_dependencyIdentityKrandom_flip_41/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*U
_classK
IGloc:@random_flip_41/map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
Urandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Srandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Srandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1random_flip_41/map/while/strided_slice_1:output:0* 
_output_shapes
::�
lrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
hrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0rrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0urandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Srandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub\random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0\random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Srandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulqrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Wrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Orandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Wrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0\random_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=random_flip_41/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
;random_flip_41/map/while/stateless_random_flip_up_down/LessLessSrandom_flip_41/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Frandom_flip_41/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
6random_flip_41/map/while/stateless_random_flip_up_downStatelessIf?random_flip_41/map/while/stateless_random_flip_up_down/Less:z:0Rrandom_flip_41/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *X
else_branchIRG
Erandom_flip_41_map_while_stateless_random_flip_up_down_false_13767423*!
output_shapes
:  *W
then_branchHRF
Drandom_flip_41_map_while_stateless_random_flip_up_down_true_13767422�
?random_flip_41/map/while/stateless_random_flip_up_down/IdentityIdentity?random_flip_41/map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
=random_flip_41/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&random_flip_41_map_while_placeholder_1$random_flip_41_map_while_placeholderHrandom_flip_41/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���`
random_flip_41/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_41/map/while/addAddV2$random_flip_41_map_while_placeholder'random_flip_41/map/while/add/y:output:0*
T0*
_output_shapes
: b
 random_flip_41/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_41/map/while/add_1AddV2>random_flip_41_map_while_random_flip_41_map_while_loop_counter)random_flip_41/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
!random_flip_41/map/while/IdentityIdentity"random_flip_41/map/while/add_1:z:0^random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
#random_flip_41/map/while/Identity_1Identity9random_flip_41_map_while_random_flip_41_map_strided_slice^random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
#random_flip_41/map/while/Identity_2Identity random_flip_41/map/while/add:z:0^random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
#random_flip_41/map/while/Identity_3IdentityMrandom_flip_41/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_41/map/while/NoOp*
T0*
_output_shapes
: �
random_flip_41/map/while/NoOpNoOpB^random_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkipD^random_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "O
!random_flip_41_map_while_identity*random_flip_41/map/while/Identity:output:0"S
#random_flip_41_map_while_identity_1,random_flip_41/map/while/Identity_1:output:0"S
#random_flip_41_map_while_identity_2,random_flip_41/map/while/Identity_2:output:0"S
#random_flip_41_map_while_identity_3,random_flip_41/map/while/Identity_3:output:0"|
;random_flip_41_map_while_random_flip_41_map_strided_slice_1=random_flip_41_map_while_random_flip_41_map_strided_slice_1_0"�
Jrandom_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resourceLrandom_flip_41_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
wrandom_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_41_map_tensorarrayunstack_tensorlistfromtensoryrandom_flip_41_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_41_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
Arandom_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkipArandom_flip_41/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Crandom_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkipCrandom_flip_41/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 
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
�
�
Ssequential_20_random_flip_41_map_while_stateless_random_flip_up_down_false_13766713�
�sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_identity_sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_20_random_flip_41_map_while_stateless_random_flip_up_down_identity�
Msequential_20/random_flip_41/map/while/stateless_random_flip_up_down/IdentityIdentity�sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_identity_sequential_20_random_flip_41_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "�
Msequential_20_random_flip_41_map_while_stateless_random_flip_up_down_identityVsequential_20/random_flip_41/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

�
G__inference_dense_243_layer_call_and_return_conditional_losses_13768572

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
)__inference_precip_layer_call_fn_13764340
	input_157
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_157unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764292o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_157
�
�
&random_flip_41_map_while_cond_13767313B
>random_flip_41_map_while_random_flip_41_map_while_loop_counter=
9random_flip_41_map_while_random_flip_41_map_strided_slice(
$random_flip_41_map_while_placeholder*
&random_flip_41_map_while_placeholder_1B
>random_flip_41_map_while_less_random_flip_41_map_strided_slice\
Xrandom_flip_41_map_while_random_flip_41_map_while_cond_13767313___redundant_placeholder0\
Xrandom_flip_41_map_while_random_flip_41_map_while_cond_13767313___redundant_placeholder1%
!random_flip_41_map_while_identity
�
random_flip_41/map/while/LessLess$random_flip_41_map_while_placeholder>random_flip_41_map_while_less_random_flip_41_map_strided_slice*
T0*
_output_shapes
: �
random_flip_41/map/while/Less_1Less>random_flip_41_map_while_random_flip_41_map_while_loop_counter9random_flip_41_map_while_random_flip_41_map_strided_slice*
T0*
_output_shapes
: �
#random_flip_41/map/while/LogicalAnd
LogicalAnd#random_flip_41/map/while/Less_1:z:0!random_flip_41/map/while/Less:z:0*
_output_shapes
: w
!random_flip_41/map/while/IdentityIdentity'random_flip_41/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "O
!random_flip_41_map_while_identity*random_flip_41/map/while/Identity:output:0*(
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
�<
�
E__inference_hr_loss_layer_call_and_return_conditional_losses_13767874
inputs_pred
inputs_true&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: 

identity_1

identity_2��AssignAddVariableOp�AssignAddVariableOp_1�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1�
7mean_squared_error/remove_squeezable_dimensions/SqueezeSqueezeinputs_true*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
$mean_squared_error/SquaredDifferenceSquaredDifferenceinputs_pred@mean_squared_error/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  t
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� k
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� y
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
-mean_squared_error/weighted_loss/num_elementsSize(mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
mulMulmul/x:output:0*mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
9mean_squared_error_1/remove_squeezable_dimensions/SqueezeSqueezeinputs_true*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
&mean_squared_error_1/SquaredDifferenceSquaredDifferenceinputs_predBmean_squared_error_1/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  v
+mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error_1/MeanMean*mean_squared_error_1/SquaredDifference:z:04mean_squared_error_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� m
(mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&mean_squared_error_1/weighted_loss/MulMul"mean_squared_error_1/Mean:output:01mean_squared_error_1/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� {
*mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&mean_squared_error_1/weighted_loss/SumSum*mean_squared_error_1/weighted_loss/Mul:z:03mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
/mean_squared_error_1/weighted_loss/num_elementsSize*mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
4mean_squared_error_1/weighted_loss/num_elements/CastCast8mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: i
'mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
(mean_squared_error_1/weighted_loss/rangeRange7mean_squared_error_1/weighted_loss/range/start:output:00mean_squared_error_1/weighted_loss/Rank:output:07mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/Sum_1Sum/mean_squared_error_1/weighted_loss/Sum:output:01mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/valueDivNoNan1mean_squared_error_1/weighted_loss/Sum_1:output:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: i
SumSum,mean_squared_error_1/weighted_loss/value:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: `

Identity_1Identityinputs_pred^NoOp*
T0*+
_output_shapes
:���������  G

Identity_2Identitymul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:���������  :���������  : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_1:X T
+
_output_shapes
:���������  
%
_user_specified_nameinputs/pred:\X
/
_output_shapes
:���������  
%
_user_specified_nameinputs/true
�
�
9map_while_stateless_random_flip_left_right_false_13768311u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�9
�
J__inference_rotationloss_layer_call_and_return_conditional_losses_13764955

inputs
inputs_1&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: (
assignaddvariableop_2_resource: (
assignaddvariableop_3_resource: 

identity_2

identity_3��AssignAddVariableOp�AssignAddVariableOp_1�AssignAddVariableOp_2�AssignAddVariableOp_3�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1�div_no_nan_1/ReadVariableOp�div_no_nan_1/ReadVariableOp_1b
mean_absolute_error/subSubinputsinputs_1*
T0*'
_output_shapes
:���������m
mean_absolute_error/AbsAbsmean_absolute_error/sub:z:0*
T0*'
_output_shapes
:���������u
*mean_absolute_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_absolute_error/MeanMeanmean_absolute_error/Abs:y:03mean_absolute_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������l
'mean_absolute_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%mean_absolute_error/weighted_loss/MulMul!mean_absolute_error/Mean:output:00mean_absolute_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������s
)mean_absolute_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
%mean_absolute_error/weighted_loss/SumSum)mean_absolute_error/weighted_loss/Mul:z:02mean_absolute_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
.mean_absolute_error/weighted_loss/num_elementsSize)mean_absolute_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
3mean_absolute_error/weighted_loss/num_elements/CastCast7mean_absolute_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&mean_absolute_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : o
-mean_absolute_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : o
-mean_absolute_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
'mean_absolute_error/weighted_loss/rangeRange6mean_absolute_error/weighted_loss/range/start:output:0/mean_absolute_error/weighted_loss/Rank:output:06mean_absolute_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
'mean_absolute_error/weighted_loss/Sum_1Sum.mean_absolute_error/weighted_loss/Sum:output:00mean_absolute_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
'mean_absolute_error/weighted_loss/valueDivNoNan0mean_absolute_error/weighted_loss/Sum_1:output:07mean_absolute_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: F
AbsAbsinputs_1*
T0*'
_output_shapes
:���������V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
MeanMeanAbs:y:0Const:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
mulMulmul/x:output:0+mean_absolute_error/weighted_loss/value:z:0*
T0*
_output_shapes
: K
truedivRealDivmul:z:0Mean:output:0*
T0*
_output_shapes
: q
	truediv_1RealDiv+mean_absolute_error/weighted_loss/value:z:0Mean:output:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: J
SumSumtruediv_1:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: N
Sum_1SumMean:output:0range_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_2AssignAddVariableOpassignaddvariableop_2_resourceSum_1:output:0*
_output_shapes
 *
dtype0H
Size_1Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_1CastSize_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_3AssignAddVariableOpassignaddvariableop_3_resource
Cast_1:y:0^AssignAddVariableOp_2*
_output_shapes
 *
dtype0�
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_2_resource^AssignAddVariableOp_2^AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_3_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_1Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: k

Identity_2Identity+mean_absolute_error/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: K

Identity_3Identitytruediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_326
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_1:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_conv2d_62_layer_call_fn_13768004

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13763420w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������	
 
_user_specified_nameinputs
�

�
G__inference_dense_248_layer_call_and_return_conditional_losses_13768413

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_dense_245_layer_call_fn_13768601

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_245_layer_call_and_return_conditional_losses_13764500p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_random_flip_41_layer_call_fn_13768224

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763674h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
)__inference_precip_layer_call_fn_13767481

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764163o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_dense_242_layer_call_fn_13768541

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_242_layer_call_and_return_conditional_losses_13764450p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
,__inference_dense_244_layer_call_fn_13768581

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_244_layer_call_and_return_conditional_losses_13764484p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
G__inference_dense_250_layer_call_and_return_conditional_losses_13764123

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
map_while_body_13763875$
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
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
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
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *L
else_branch=R;
9map_while_stateless_random_flip_left_right_false_13763935*!
output_shapes
:  *K
then_branch<R:
8map_while_stateless_random_flip_left_right_true_13763934�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
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
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_up_down_false_13763984*!
output_shapes
:  *H
then_branch9R7
5map_while_stateless_random_flip_up_down_true_13763983�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
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
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
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
̗
�&
F__inference_model_35_layer_call_and_return_conditional_losses_13766401
inputs_0
inputs_1
inputs_2K
1model_34_conv2d_60_conv2d_readvariableop_resource:@
2model_34_conv2d_60_biasadd_readvariableop_resource:K
1model_34_conv2d_61_conv2d_readvariableop_resource:@
2model_34_conv2d_61_biasadd_readvariableop_resource:K
1model_34_conv2d_62_conv2d_readvariableop_resource:@
2model_34_conv2d_62_biasadd_readvariableop_resource:@
-model_34_xmean_matmul_readvariableop_resource:	�<
.model_34_xmean_biasadd_readvariableop_resource:B
0reconst_dense_240_matmul_readvariableop_resource:@?
1reconst_dense_240_biasadd_readvariableop_resource:@C
0reconst_dense_241_matmul_readvariableop_resource:	@�@
1reconst_dense_241_biasadd_readvariableop_resource:	�D
0reconst_dense_242_matmul_readvariableop_resource:
��@
1reconst_dense_242_biasadd_readvariableop_resource:	�D
0reconst_dense_243_matmul_readvariableop_resource:
��@
1reconst_dense_243_biasadd_readvariableop_resource:	�D
0reconst_dense_244_matmul_readvariableop_resource:
��@
1reconst_dense_244_biasadd_readvariableop_resource:	�D
0reconst_dense_245_matmul_readvariableop_resource:
��@
1reconst_dense_245_biasadd_readvariableop_resource:	�B
/precip_dense_248_matmul_readvariableop_resource:	�?
0precip_dense_248_biasadd_readvariableop_resource:	�C
/precip_dense_249_matmul_readvariableop_resource:
��?
0precip_dense_249_biasadd_readvariableop_resource:	�C
/precip_dense_250_matmul_readvariableop_resource:
��?
0precip_dense_250_biasadd_readvariableop_resource:	�B
/precip_dense_251_matmul_readvariableop_resource:	�@>
0precip_dense_251_biasadd_readvariableop_resource:@>
,precip_precip_matmul_readvariableop_resource:@;
-precip_precip_biasadd_readvariableop_resource:3
)rotationloss_assignaddvariableop_resource: 5
+rotationloss_assignaddvariableop_1_resource: 5
+rotationloss_assignaddvariableop_2_resource: 5
+rotationloss_assignaddvariableop_3_resource: .
$hr_loss_assignaddvariableop_resource: 0
&hr_loss_assignaddvariableop_1_resource: 2
(precip_loss_assignaddvariableop_resource: 4
*precip_loss_assignaddvariableop_1_resource: 
identity

identity_1

identity_2

identity_3

identity_4

identity_5��hr_loss/AssignAddVariableOp�hr_loss/AssignAddVariableOp_1�!hr_loss/div_no_nan/ReadVariableOp�#hr_loss/div_no_nan/ReadVariableOp_1�)model_34/conv2d_60/BiasAdd/ReadVariableOp�+model_34/conv2d_60/BiasAdd_1/ReadVariableOp�(model_34/conv2d_60/Conv2D/ReadVariableOp�*model_34/conv2d_60/Conv2D_1/ReadVariableOp�)model_34/conv2d_61/BiasAdd/ReadVariableOp�+model_34/conv2d_61/BiasAdd_1/ReadVariableOp�(model_34/conv2d_61/Conv2D/ReadVariableOp�*model_34/conv2d_61/Conv2D_1/ReadVariableOp�)model_34/conv2d_62/BiasAdd/ReadVariableOp�+model_34/conv2d_62/BiasAdd_1/ReadVariableOp�(model_34/conv2d_62/Conv2D/ReadVariableOp�*model_34/conv2d_62/Conv2D_1/ReadVariableOp�%model_34/xmean/BiasAdd/ReadVariableOp�'model_34/xmean/BiasAdd_1/ReadVariableOp�$model_34/xmean/MatMul/ReadVariableOp�&model_34/xmean/MatMul_1/ReadVariableOp�'precip/dense_248/BiasAdd/ReadVariableOp�&precip/dense_248/MatMul/ReadVariableOp�'precip/dense_249/BiasAdd/ReadVariableOp�&precip/dense_249/MatMul/ReadVariableOp�'precip/dense_250/BiasAdd/ReadVariableOp�&precip/dense_250/MatMul/ReadVariableOp�'precip/dense_251/BiasAdd/ReadVariableOp�&precip/dense_251/MatMul/ReadVariableOp�$precip/precip/BiasAdd/ReadVariableOp�#precip/precip/MatMul/ReadVariableOp�precip_loss/AssignAddVariableOp�!precip_loss/AssignAddVariableOp_1�%precip_loss/div_no_nan/ReadVariableOp�'precip_loss/div_no_nan/ReadVariableOp_1�(reconst/dense_240/BiasAdd/ReadVariableOp�'reconst/dense_240/MatMul/ReadVariableOp�(reconst/dense_241/BiasAdd/ReadVariableOp�'reconst/dense_241/MatMul/ReadVariableOp�(reconst/dense_242/BiasAdd/ReadVariableOp�'reconst/dense_242/MatMul/ReadVariableOp�(reconst/dense_243/BiasAdd/ReadVariableOp�'reconst/dense_243/MatMul/ReadVariableOp�(reconst/dense_244/BiasAdd/ReadVariableOp�'reconst/dense_244/MatMul/ReadVariableOp�(reconst/dense_245/BiasAdd/ReadVariableOp�'reconst/dense_245/MatMul/ReadVariableOp� rotationloss/AssignAddVariableOp�"rotationloss/AssignAddVariableOp_1�"rotationloss/AssignAddVariableOp_2�"rotationloss/AssignAddVariableOp_3�&rotationloss/div_no_nan/ReadVariableOp�(rotationloss/div_no_nan/ReadVariableOp_1�(rotationloss/div_no_nan_1/ReadVariableOp�*rotationloss/div_no_nan_1/ReadVariableOp_1�
'model_34/zero_padding2d_20/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
model_34/zero_padding2d_20/PadPadinputs_00model_34/zero_padding2d_20/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
(model_34/conv2d_60/Conv2D/ReadVariableOpReadVariableOp1model_34_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_60/Conv2DConv2D'model_34/zero_padding2d_20/Pad:output:00model_34/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)model_34/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp2model_34_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_60/BiasAddBiasAdd"model_34/conv2d_60/Conv2D:output:01model_34/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~
model_34/conv2d_60/ReluRelu#model_34/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:����������
(model_34/conv2d_61/Conv2D/ReadVariableOpReadVariableOp1model_34_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_61/Conv2DConv2D%model_34/conv2d_60/Relu:activations:00model_34/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
)model_34/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp2model_34_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_61/BiasAddBiasAdd"model_34/conv2d_61/Conv2D:output:01model_34/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	~
model_34/conv2d_61/ReluRelu#model_34/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
(model_34/conv2d_62/Conv2D/ReadVariableOpReadVariableOp1model_34_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_62/Conv2DConv2D%model_34/conv2d_61/Relu:activations:00model_34/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)model_34/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp2model_34_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_62/BiasAddBiasAdd"model_34/conv2d_62/Conv2D:output:01model_34/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~
model_34/conv2d_62/ReluRelu#model_34/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������j
model_34/flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
model_34/flatten_20/ReshapeReshape%model_34/conv2d_62/Relu:activations:0"model_34/flatten_20/Const:output:0*
T0*(
_output_shapes
:�����������
$model_34/xmean/MatMul/ReadVariableOpReadVariableOp-model_34_xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_34/xmean/MatMulMatMul$model_34/flatten_20/Reshape:output:0,model_34/xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%model_34/xmean/BiasAdd/ReadVariableOpReadVariableOp.model_34_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/xmean/BiasAddBiasAddmodel_34/xmean/MatMul:product:0-model_34/xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\
concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_18/concatConcatV2model_34/xmean/BiasAdd:output:0inputs_1#concatenate_18/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
)model_34/zero_padding2d_20/Pad_1/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 model_34/zero_padding2d_20/Pad_1Padinputs_02model_34/zero_padding2d_20/Pad_1/paddings:output:0*
T0*/
_output_shapes
:���������" �
*model_34/conv2d_60/Conv2D_1/ReadVariableOpReadVariableOp1model_34_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_60/Conv2D_1Conv2D)model_34/zero_padding2d_20/Pad_1:output:02model_34/conv2d_60/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
+model_34/conv2d_60/BiasAdd_1/ReadVariableOpReadVariableOp2model_34_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_60/BiasAdd_1BiasAdd$model_34/conv2d_60/Conv2D_1:output:03model_34/conv2d_60/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
model_34/conv2d_60/Relu_1Relu%model_34/conv2d_60/BiasAdd_1:output:0*
T0*/
_output_shapes
:����������
*model_34/conv2d_61/Conv2D_1/ReadVariableOpReadVariableOp1model_34_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_61/Conv2D_1Conv2D'model_34/conv2d_60/Relu_1:activations:02model_34/conv2d_61/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
+model_34/conv2d_61/BiasAdd_1/ReadVariableOpReadVariableOp2model_34_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_61/BiasAdd_1BiasAdd$model_34/conv2d_61/Conv2D_1:output:03model_34/conv2d_61/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	�
model_34/conv2d_61/Relu_1Relu%model_34/conv2d_61/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������	�
*model_34/conv2d_62/Conv2D_1/ReadVariableOpReadVariableOp1model_34_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_62/Conv2D_1Conv2D'model_34/conv2d_61/Relu_1:activations:02model_34/conv2d_62/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
+model_34/conv2d_62/BiasAdd_1/ReadVariableOpReadVariableOp2model_34_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_62/BiasAdd_1BiasAdd$model_34/conv2d_62/Conv2D_1:output:03model_34/conv2d_62/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
model_34/conv2d_62/Relu_1Relu%model_34/conv2d_62/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������l
model_34/flatten_20/Const_1Const*
_output_shapes
:*
dtype0*
valueB"�����   �
model_34/flatten_20/Reshape_1Reshape'model_34/conv2d_62/Relu_1:activations:0$model_34/flatten_20/Const_1:output:0*
T0*(
_output_shapes
:�����������
&model_34/xmean/MatMul_1/ReadVariableOpReadVariableOp-model_34_xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_34/xmean/MatMul_1MatMul&model_34/flatten_20/Reshape_1:output:0.model_34/xmean/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_34/xmean/BiasAdd_1/ReadVariableOpReadVariableOp.model_34_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/xmean/BiasAdd_1BiasAdd!model_34/xmean/MatMul_1:product:0/model_34/xmean/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'reconst/dense_240/MatMul/ReadVariableOpReadVariableOp0reconst_dense_240_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
reconst/dense_240/MatMulMatMulmodel_34/xmean/BiasAdd:output:0/reconst/dense_240/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
(reconst/dense_240/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_240_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
reconst/dense_240/BiasAddBiasAdd"reconst/dense_240/MatMul:product:00reconst/dense_240/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@t
reconst/dense_240/ReluRelu"reconst/dense_240/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
'reconst/dense_241/MatMul/ReadVariableOpReadVariableOp0reconst_dense_241_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
reconst/dense_241/MatMulMatMul$reconst/dense_240/Relu:activations:0/reconst/dense_241/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_241/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_241_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_241/BiasAddBiasAdd"reconst/dense_241/MatMul:product:00reconst/dense_241/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_241/ReluRelu"reconst/dense_241/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_242/MatMul/ReadVariableOpReadVariableOp0reconst_dense_242_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_242/MatMulMatMul$reconst/dense_241/Relu:activations:0/reconst/dense_242/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_242/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_242_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_242/BiasAddBiasAdd"reconst/dense_242/MatMul:product:00reconst/dense_242/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_242/ReluRelu"reconst/dense_242/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_243/MatMul/ReadVariableOpReadVariableOp0reconst_dense_243_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_243/MatMulMatMul$reconst/dense_242/Relu:activations:0/reconst/dense_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_243/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_243_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_243/BiasAddBiasAdd"reconst/dense_243/MatMul:product:00reconst/dense_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_243/ReluRelu"reconst/dense_243/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_244/MatMul/ReadVariableOpReadVariableOp0reconst_dense_244_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_244/MatMulMatMul$reconst/dense_243/Relu:activations:0/reconst/dense_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_244/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_244_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_244/BiasAddBiasAdd"reconst/dense_244/MatMul:product:00reconst/dense_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_244/ReluRelu"reconst/dense_244/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_245/MatMul/ReadVariableOpReadVariableOp0reconst_dense_245_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_245/MatMulMatMul$reconst/dense_244/Relu:activations:0/reconst/dense_245/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_245/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_245_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_245/BiasAddBiasAdd"reconst/dense_245/MatMul:product:00reconst/dense_245/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
reconst/Reconst/ShapeShape"reconst/dense_245/BiasAdd:output:0*
T0*
_output_shapes
:m
#reconst/Reconst/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%reconst/Reconst/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%reconst/Reconst/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reconst/Reconst/strided_sliceStridedSlicereconst/Reconst/Shape:output:0,reconst/Reconst/strided_slice/stack:output:0.reconst/Reconst/strided_slice/stack_1:output:0.reconst/Reconst/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
reconst/Reconst/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : a
reconst/Reconst/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
reconst/Reconst/Reshape/shapePack&reconst/Reconst/strided_slice:output:0(reconst/Reconst/Reshape/shape/1:output:0(reconst/Reconst/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reconst/Reconst/ReshapeReshape"reconst/dense_245/BiasAdd:output:0&reconst/Reconst/Reshape/shape:output:0*
T0*+
_output_shapes
:���������  �
&precip/dense_248/MatMul/ReadVariableOpReadVariableOp/precip_dense_248_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
precip/dense_248/MatMulMatMulconcatenate_18/concat:output:0.precip/dense_248/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'precip/dense_248/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_248_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
precip/dense_248/BiasAddBiasAdd!precip/dense_248/MatMul:product:0/precip/dense_248/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
precip/dense_248/ReluRelu!precip/dense_248/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&precip/dense_249/MatMul/ReadVariableOpReadVariableOp/precip_dense_249_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
precip/dense_249/MatMulMatMul#precip/dense_248/Relu:activations:0.precip/dense_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'precip/dense_249/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_249_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
precip/dense_249/BiasAddBiasAdd!precip/dense_249/MatMul:product:0/precip/dense_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
precip/dense_249/ReluRelu!precip/dense_249/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&precip/dense_250/MatMul/ReadVariableOpReadVariableOp/precip_dense_250_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
precip/dense_250/MatMulMatMul#precip/dense_249/Relu:activations:0.precip/dense_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'precip/dense_250/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_250_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
precip/dense_250/BiasAddBiasAdd!precip/dense_250/MatMul:product:0/precip/dense_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
precip/dense_250/ReluRelu!precip/dense_250/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&precip/dense_251/MatMul/ReadVariableOpReadVariableOp/precip_dense_251_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
precip/dense_251/MatMulMatMul#precip/dense_250/Relu:activations:0.precip/dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'precip/dense_251/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_251_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
precip/dense_251/BiasAddBiasAdd!precip/dense_251/MatMul:product:0/precip/dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
precip/dense_251/ReluRelu!precip/dense_251/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#precip/precip/MatMul/ReadVariableOpReadVariableOp,precip_precip_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
precip/precip/MatMulMatMul#precip/dense_251/Relu:activations:0+precip/precip/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$precip/precip/BiasAdd/ReadVariableOpReadVariableOp-precip_precip_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
precip/precip/BiasAddBiasAddprecip/precip/MatMul:product:0,precip/precip/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$rotationloss/mean_absolute_error/subSub!model_34/xmean/BiasAdd_1:output:0model_34/xmean/BiasAdd:output:0*
T0*'
_output_shapes
:����������
$rotationloss/mean_absolute_error/AbsAbs(rotationloss/mean_absolute_error/sub:z:0*
T0*'
_output_shapes
:����������
7rotationloss/mean_absolute_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
%rotationloss/mean_absolute_error/MeanMean(rotationloss/mean_absolute_error/Abs:y:0@rotationloss/mean_absolute_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������y
4rotationloss/mean_absolute_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2rotationloss/mean_absolute_error/weighted_loss/MulMul.rotationloss/mean_absolute_error/Mean:output:0=rotationloss/mean_absolute_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
6rotationloss/mean_absolute_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2rotationloss/mean_absolute_error/weighted_loss/SumSum6rotationloss/mean_absolute_error/weighted_loss/Mul:z:0?rotationloss/mean_absolute_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
;rotationloss/mean_absolute_error/weighted_loss/num_elementsSize6rotationloss/mean_absolute_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
@rotationloss/mean_absolute_error/weighted_loss/num_elements/CastCastDrotationloss/mean_absolute_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: u
3rotationloss/mean_absolute_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : |
:rotationloss/mean_absolute_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : |
:rotationloss/mean_absolute_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
4rotationloss/mean_absolute_error/weighted_loss/rangeRangeCrotationloss/mean_absolute_error/weighted_loss/range/start:output:0<rotationloss/mean_absolute_error/weighted_loss/Rank:output:0Crotationloss/mean_absolute_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
4rotationloss/mean_absolute_error/weighted_loss/Sum_1Sum;rotationloss/mean_absolute_error/weighted_loss/Sum:output:0=rotationloss/mean_absolute_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
4rotationloss/mean_absolute_error/weighted_loss/valueDivNoNan=rotationloss/mean_absolute_error/weighted_loss/Sum_1:output:0Drotationloss/mean_absolute_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: j
rotationloss/AbsAbsmodel_34/xmean/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
rotationloss/ConstConst*
_output_shapes
:*
dtype0*
valueB"       m
rotationloss/MeanMeanrotationloss/Abs:y:0rotationloss/Const:output:0*
T0*
_output_shapes
: W
rotationloss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
rotationloss/mulMulrotationloss/mul/x:output:08rotationloss/mean_absolute_error/weighted_loss/value:z:0*
T0*
_output_shapes
: r
rotationloss/truedivRealDivrotationloss/mul:z:0rotationloss/Mean:output:0*
T0*
_output_shapes
: �
rotationloss/truediv_1RealDiv8rotationloss/mean_absolute_error/weighted_loss/value:z:0rotationloss/Mean:output:0*
T0*
_output_shapes
: S
rotationloss/RankConst*
_output_shapes
: *
dtype0*
value	B : Z
rotationloss/range/startConst*
_output_shapes
: *
dtype0*
value	B : Z
rotationloss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
rotationloss/rangeRange!rotationloss/range/start:output:0rotationloss/Rank:output:0!rotationloss/range/delta:output:0*
_output_shapes
: q
rotationloss/SumSumrotationloss/truediv_1:z:0rotationloss/range:output:0*
T0*
_output_shapes
: �
 rotationloss/AssignAddVariableOpAssignAddVariableOp)rotationloss_assignaddvariableop_resourcerotationloss/Sum:output:0*
_output_shapes
 *
dtype0S
rotationloss/SizeConst*
_output_shapes
: *
dtype0*
value	B :e
rotationloss/CastCastrotationloss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
"rotationloss/AssignAddVariableOp_1AssignAddVariableOp+rotationloss_assignaddvariableop_1_resourcerotationloss/Cast:y:0!^rotationloss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
&rotationloss/div_no_nan/ReadVariableOpReadVariableOp)rotationloss_assignaddvariableop_resource!^rotationloss/AssignAddVariableOp#^rotationloss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
(rotationloss/div_no_nan/ReadVariableOp_1ReadVariableOp+rotationloss_assignaddvariableop_1_resource#^rotationloss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
rotationloss/div_no_nanDivNoNan.rotationloss/div_no_nan/ReadVariableOp:value:00rotationloss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: _
rotationloss/IdentityIdentityrotationloss/div_no_nan:z:0*
T0*
_output_shapes
: U
rotationloss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : \
rotationloss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : \
rotationloss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
rotationloss/range_1Range#rotationloss/range_1/start:output:0rotationloss/Rank_1:output:0#rotationloss/range_1/delta:output:0*
_output_shapes
: u
rotationloss/Sum_1Sumrotationloss/Mean:output:0rotationloss/range_1:output:0*
T0*
_output_shapes
: �
"rotationloss/AssignAddVariableOp_2AssignAddVariableOp+rotationloss_assignaddvariableop_2_resourcerotationloss/Sum_1:output:0*
_output_shapes
 *
dtype0U
rotationloss/Size_1Const*
_output_shapes
: *
dtype0*
value	B :i
rotationloss/Cast_1Castrotationloss/Size_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
"rotationloss/AssignAddVariableOp_3AssignAddVariableOp+rotationloss_assignaddvariableop_3_resourcerotationloss/Cast_1:y:0#^rotationloss/AssignAddVariableOp_2*
_output_shapes
 *
dtype0�
(rotationloss/div_no_nan_1/ReadVariableOpReadVariableOp+rotationloss_assignaddvariableop_2_resource#^rotationloss/AssignAddVariableOp_2#^rotationloss/AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
*rotationloss/div_no_nan_1/ReadVariableOp_1ReadVariableOp+rotationloss_assignaddvariableop_3_resource#^rotationloss/AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
rotationloss/div_no_nan_1DivNoNan0rotationloss/div_no_nan_1/ReadVariableOp:value:02rotationloss/div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: c
rotationloss/Identity_1Identityrotationloss/div_no_nan_1:z:0*
T0*
_output_shapes
: �
?hr_loss/mean_squared_error/remove_squeezable_dimensions/SqueezeSqueezeinputs_0*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
,hr_loss/mean_squared_error/SquaredDifferenceSquaredDifference reconst/Reconst/Reshape:output:0Hhr_loss/mean_squared_error/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  |
1hr_loss/mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
hr_loss/mean_squared_error/MeanMean0hr_loss/mean_squared_error/SquaredDifference:z:0:hr_loss/mean_squared_error/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� s
.hr_loss/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,hr_loss/mean_squared_error/weighted_loss/MulMul(hr_loss/mean_squared_error/Mean:output:07hr_loss/mean_squared_error/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� �
0hr_loss/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
,hr_loss/mean_squared_error/weighted_loss/SumSum0hr_loss/mean_squared_error/weighted_loss/Mul:z:09hr_loss/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
5hr_loss/mean_squared_error/weighted_loss/num_elementsSize0hr_loss/mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
:hr_loss/mean_squared_error/weighted_loss/num_elements/CastCast>hr_loss/mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: o
-hr_loss/mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : v
4hr_loss/mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : v
4hr_loss/mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
.hr_loss/mean_squared_error/weighted_loss/rangeRange=hr_loss/mean_squared_error/weighted_loss/range/start:output:06hr_loss/mean_squared_error/weighted_loss/Rank:output:0=hr_loss/mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
.hr_loss/mean_squared_error/weighted_loss/Sum_1Sum5hr_loss/mean_squared_error/weighted_loss/Sum:output:07hr_loss/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
.hr_loss/mean_squared_error/weighted_loss/valueDivNoNan7hr_loss/mean_squared_error/weighted_loss/Sum_1:output:0>hr_loss/mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: R
hr_loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
hr_loss/mulMulhr_loss/mul/x:output:02hr_loss/mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
Ahr_loss/mean_squared_error_1/remove_squeezable_dimensions/SqueezeSqueezeinputs_0*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
.hr_loss/mean_squared_error_1/SquaredDifferenceSquaredDifference reconst/Reconst/Reshape:output:0Jhr_loss/mean_squared_error_1/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  ~
3hr_loss/mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
!hr_loss/mean_squared_error_1/MeanMean2hr_loss/mean_squared_error_1/SquaredDifference:z:0<hr_loss/mean_squared_error_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� u
0hr_loss/mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.hr_loss/mean_squared_error_1/weighted_loss/MulMul*hr_loss/mean_squared_error_1/Mean:output:09hr_loss/mean_squared_error_1/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� �
2hr_loss/mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
.hr_loss/mean_squared_error_1/weighted_loss/SumSum2hr_loss/mean_squared_error_1/weighted_loss/Mul:z:0;hr_loss/mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
7hr_loss/mean_squared_error_1/weighted_loss/num_elementsSize2hr_loss/mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
<hr_loss/mean_squared_error_1/weighted_loss/num_elements/CastCast@hr_loss/mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: q
/hr_loss/mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : x
6hr_loss/mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : x
6hr_loss/mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
0hr_loss/mean_squared_error_1/weighted_loss/rangeRange?hr_loss/mean_squared_error_1/weighted_loss/range/start:output:08hr_loss/mean_squared_error_1/weighted_loss/Rank:output:0?hr_loss/mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
0hr_loss/mean_squared_error_1/weighted_loss/Sum_1Sum7hr_loss/mean_squared_error_1/weighted_loss/Sum:output:09hr_loss/mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
0hr_loss/mean_squared_error_1/weighted_loss/valueDivNoNan9hr_loss/mean_squared_error_1/weighted_loss/Sum_1:output:0@hr_loss/mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: N
hr_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : U
hr_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
hr_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
hr_loss/rangeRangehr_loss/range/start:output:0hr_loss/Rank:output:0hr_loss/range/delta:output:0*
_output_shapes
: �
hr_loss/SumSum4hr_loss/mean_squared_error_1/weighted_loss/value:z:0hr_loss/range:output:0*
T0*
_output_shapes
: �
hr_loss/AssignAddVariableOpAssignAddVariableOp$hr_loss_assignaddvariableop_resourcehr_loss/Sum:output:0*
_output_shapes
 *
dtype0N
hr_loss/SizeConst*
_output_shapes
: *
dtype0*
value	B :[
hr_loss/CastCasthr_loss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
hr_loss/AssignAddVariableOp_1AssignAddVariableOp&hr_loss_assignaddvariableop_1_resourcehr_loss/Cast:y:0^hr_loss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
!hr_loss/div_no_nan/ReadVariableOpReadVariableOp$hr_loss_assignaddvariableop_resource^hr_loss/AssignAddVariableOp^hr_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
#hr_loss/div_no_nan/ReadVariableOp_1ReadVariableOp&hr_loss_assignaddvariableop_1_resource^hr_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
hr_loss/div_no_nanDivNoNan)hr_loss/div_no_nan/ReadVariableOp:value:0+hr_loss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: U
hr_loss/IdentityIdentityhr_loss/div_no_nan:z:0*
T0*
_output_shapes
: �
0precip_loss/mean_squared_error/SquaredDifferenceSquaredDifferenceprecip/precip/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:����������
5precip_loss/mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
#precip_loss/mean_squared_error/MeanMean4precip_loss/mean_squared_error/SquaredDifference:z:0>precip_loss/mean_squared_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������w
2precip_loss/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0precip_loss/mean_squared_error/weighted_loss/MulMul,precip_loss/mean_squared_error/Mean:output:0;precip_loss/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������~
4precip_loss/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0precip_loss/mean_squared_error/weighted_loss/SumSum4precip_loss/mean_squared_error/weighted_loss/Mul:z:0=precip_loss/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
9precip_loss/mean_squared_error/weighted_loss/num_elementsSize4precip_loss/mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
>precip_loss/mean_squared_error/weighted_loss/num_elements/CastCastBprecip_loss/mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: s
1precip_loss/mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : z
8precip_loss/mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : z
8precip_loss/mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
2precip_loss/mean_squared_error/weighted_loss/rangeRangeAprecip_loss/mean_squared_error/weighted_loss/range/start:output:0:precip_loss/mean_squared_error/weighted_loss/Rank:output:0Aprecip_loss/mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
2precip_loss/mean_squared_error/weighted_loss/Sum_1Sum9precip_loss/mean_squared_error/weighted_loss/Sum:output:0;precip_loss/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
2precip_loss/mean_squared_error/weighted_loss/valueDivNoNan;precip_loss/mean_squared_error/weighted_loss/Sum_1:output:0Bprecip_loss/mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: V
precip_loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
precip_loss/mulMulprecip_loss/mul/x:output:06precip_loss/mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
2precip_loss/mean_squared_error_1/SquaredDifferenceSquaredDifferenceprecip/precip/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:����������
7precip_loss/mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
%precip_loss/mean_squared_error_1/MeanMean6precip_loss/mean_squared_error_1/SquaredDifference:z:0@precip_loss/mean_squared_error_1/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������y
4precip_loss/mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2precip_loss/mean_squared_error_1/weighted_loss/MulMul.precip_loss/mean_squared_error_1/Mean:output:0=precip_loss/mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
6precip_loss/mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2precip_loss/mean_squared_error_1/weighted_loss/SumSum6precip_loss/mean_squared_error_1/weighted_loss/Mul:z:0?precip_loss/mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
;precip_loss/mean_squared_error_1/weighted_loss/num_elementsSize6precip_loss/mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
@precip_loss/mean_squared_error_1/weighted_loss/num_elements/CastCastDprecip_loss/mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: u
3precip_loss/mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : |
:precip_loss/mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : |
:precip_loss/mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
4precip_loss/mean_squared_error_1/weighted_loss/rangeRangeCprecip_loss/mean_squared_error_1/weighted_loss/range/start:output:0<precip_loss/mean_squared_error_1/weighted_loss/Rank:output:0Cprecip_loss/mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
4precip_loss/mean_squared_error_1/weighted_loss/Sum_1Sum;precip_loss/mean_squared_error_1/weighted_loss/Sum:output:0=precip_loss/mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
4precip_loss/mean_squared_error_1/weighted_loss/valueDivNoNan=precip_loss/mean_squared_error_1/weighted_loss/Sum_1:output:0Dprecip_loss/mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: R
precip_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : Y
precip_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : Y
precip_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
precip_loss/rangeRange precip_loss/range/start:output:0precip_loss/Rank:output:0 precip_loss/range/delta:output:0*
_output_shapes
: �
precip_loss/SumSum8precip_loss/mean_squared_error_1/weighted_loss/value:z:0precip_loss/range:output:0*
T0*
_output_shapes
: �
precip_loss/AssignAddVariableOpAssignAddVariableOp(precip_loss_assignaddvariableop_resourceprecip_loss/Sum:output:0*
_output_shapes
 *
dtype0R
precip_loss/SizeConst*
_output_shapes
: *
dtype0*
value	B :c
precip_loss/CastCastprecip_loss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
!precip_loss/AssignAddVariableOp_1AssignAddVariableOp*precip_loss_assignaddvariableop_1_resourceprecip_loss/Cast:y:0 ^precip_loss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
%precip_loss/div_no_nan/ReadVariableOpReadVariableOp(precip_loss_assignaddvariableop_resource ^precip_loss/AssignAddVariableOp"^precip_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
'precip_loss/div_no_nan/ReadVariableOp_1ReadVariableOp*precip_loss_assignaddvariableop_1_resource"^precip_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
precip_loss/div_no_nanDivNoNan-precip_loss/div_no_nan/ReadVariableOp:value:0/precip_loss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: ]
precip_loss/IdentityIdentityprecip_loss/div_no_nan:z:0*
T0*
_output_shapes
: m
IdentityIdentityprecip/precip/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������u

Identity_1Identity reconst/Reconst/Reshape:output:0^NoOp*
T0*+
_output_shapes
:���������  x

Identity_2Identity8rotationloss/mean_absolute_error/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: S

Identity_3Identityprecip_loss/mul:z:0^NoOp*
T0*
_output_shapes
: O

Identity_4Identityhr_loss/mul:z:0^NoOp*
T0*
_output_shapes
: X

Identity_5Identityrotationloss/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^hr_loss/AssignAddVariableOp^hr_loss/AssignAddVariableOp_1"^hr_loss/div_no_nan/ReadVariableOp$^hr_loss/div_no_nan/ReadVariableOp_1*^model_34/conv2d_60/BiasAdd/ReadVariableOp,^model_34/conv2d_60/BiasAdd_1/ReadVariableOp)^model_34/conv2d_60/Conv2D/ReadVariableOp+^model_34/conv2d_60/Conv2D_1/ReadVariableOp*^model_34/conv2d_61/BiasAdd/ReadVariableOp,^model_34/conv2d_61/BiasAdd_1/ReadVariableOp)^model_34/conv2d_61/Conv2D/ReadVariableOp+^model_34/conv2d_61/Conv2D_1/ReadVariableOp*^model_34/conv2d_62/BiasAdd/ReadVariableOp,^model_34/conv2d_62/BiasAdd_1/ReadVariableOp)^model_34/conv2d_62/Conv2D/ReadVariableOp+^model_34/conv2d_62/Conv2D_1/ReadVariableOp&^model_34/xmean/BiasAdd/ReadVariableOp(^model_34/xmean/BiasAdd_1/ReadVariableOp%^model_34/xmean/MatMul/ReadVariableOp'^model_34/xmean/MatMul_1/ReadVariableOp(^precip/dense_248/BiasAdd/ReadVariableOp'^precip/dense_248/MatMul/ReadVariableOp(^precip/dense_249/BiasAdd/ReadVariableOp'^precip/dense_249/MatMul/ReadVariableOp(^precip/dense_250/BiasAdd/ReadVariableOp'^precip/dense_250/MatMul/ReadVariableOp(^precip/dense_251/BiasAdd/ReadVariableOp'^precip/dense_251/MatMul/ReadVariableOp%^precip/precip/BiasAdd/ReadVariableOp$^precip/precip/MatMul/ReadVariableOp ^precip_loss/AssignAddVariableOp"^precip_loss/AssignAddVariableOp_1&^precip_loss/div_no_nan/ReadVariableOp(^precip_loss/div_no_nan/ReadVariableOp_1)^reconst/dense_240/BiasAdd/ReadVariableOp(^reconst/dense_240/MatMul/ReadVariableOp)^reconst/dense_241/BiasAdd/ReadVariableOp(^reconst/dense_241/MatMul/ReadVariableOp)^reconst/dense_242/BiasAdd/ReadVariableOp(^reconst/dense_242/MatMul/ReadVariableOp)^reconst/dense_243/BiasAdd/ReadVariableOp(^reconst/dense_243/MatMul/ReadVariableOp)^reconst/dense_244/BiasAdd/ReadVariableOp(^reconst/dense_244/MatMul/ReadVariableOp)^reconst/dense_245/BiasAdd/ReadVariableOp(^reconst/dense_245/MatMul/ReadVariableOp!^rotationloss/AssignAddVariableOp#^rotationloss/AssignAddVariableOp_1#^rotationloss/AssignAddVariableOp_2#^rotationloss/AssignAddVariableOp_3'^rotationloss/div_no_nan/ReadVariableOp)^rotationloss/div_no_nan/ReadVariableOp_1)^rotationloss/div_no_nan_1/ReadVariableOp+^rotationloss/div_no_nan_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
hr_loss/AssignAddVariableOphr_loss/AssignAddVariableOp2>
hr_loss/AssignAddVariableOp_1hr_loss/AssignAddVariableOp_12F
!hr_loss/div_no_nan/ReadVariableOp!hr_loss/div_no_nan/ReadVariableOp2J
#hr_loss/div_no_nan/ReadVariableOp_1#hr_loss/div_no_nan/ReadVariableOp_12V
)model_34/conv2d_60/BiasAdd/ReadVariableOp)model_34/conv2d_60/BiasAdd/ReadVariableOp2Z
+model_34/conv2d_60/BiasAdd_1/ReadVariableOp+model_34/conv2d_60/BiasAdd_1/ReadVariableOp2T
(model_34/conv2d_60/Conv2D/ReadVariableOp(model_34/conv2d_60/Conv2D/ReadVariableOp2X
*model_34/conv2d_60/Conv2D_1/ReadVariableOp*model_34/conv2d_60/Conv2D_1/ReadVariableOp2V
)model_34/conv2d_61/BiasAdd/ReadVariableOp)model_34/conv2d_61/BiasAdd/ReadVariableOp2Z
+model_34/conv2d_61/BiasAdd_1/ReadVariableOp+model_34/conv2d_61/BiasAdd_1/ReadVariableOp2T
(model_34/conv2d_61/Conv2D/ReadVariableOp(model_34/conv2d_61/Conv2D/ReadVariableOp2X
*model_34/conv2d_61/Conv2D_1/ReadVariableOp*model_34/conv2d_61/Conv2D_1/ReadVariableOp2V
)model_34/conv2d_62/BiasAdd/ReadVariableOp)model_34/conv2d_62/BiasAdd/ReadVariableOp2Z
+model_34/conv2d_62/BiasAdd_1/ReadVariableOp+model_34/conv2d_62/BiasAdd_1/ReadVariableOp2T
(model_34/conv2d_62/Conv2D/ReadVariableOp(model_34/conv2d_62/Conv2D/ReadVariableOp2X
*model_34/conv2d_62/Conv2D_1/ReadVariableOp*model_34/conv2d_62/Conv2D_1/ReadVariableOp2N
%model_34/xmean/BiasAdd/ReadVariableOp%model_34/xmean/BiasAdd/ReadVariableOp2R
'model_34/xmean/BiasAdd_1/ReadVariableOp'model_34/xmean/BiasAdd_1/ReadVariableOp2L
$model_34/xmean/MatMul/ReadVariableOp$model_34/xmean/MatMul/ReadVariableOp2P
&model_34/xmean/MatMul_1/ReadVariableOp&model_34/xmean/MatMul_1/ReadVariableOp2R
'precip/dense_248/BiasAdd/ReadVariableOp'precip/dense_248/BiasAdd/ReadVariableOp2P
&precip/dense_248/MatMul/ReadVariableOp&precip/dense_248/MatMul/ReadVariableOp2R
'precip/dense_249/BiasAdd/ReadVariableOp'precip/dense_249/BiasAdd/ReadVariableOp2P
&precip/dense_249/MatMul/ReadVariableOp&precip/dense_249/MatMul/ReadVariableOp2R
'precip/dense_250/BiasAdd/ReadVariableOp'precip/dense_250/BiasAdd/ReadVariableOp2P
&precip/dense_250/MatMul/ReadVariableOp&precip/dense_250/MatMul/ReadVariableOp2R
'precip/dense_251/BiasAdd/ReadVariableOp'precip/dense_251/BiasAdd/ReadVariableOp2P
&precip/dense_251/MatMul/ReadVariableOp&precip/dense_251/MatMul/ReadVariableOp2L
$precip/precip/BiasAdd/ReadVariableOp$precip/precip/BiasAdd/ReadVariableOp2J
#precip/precip/MatMul/ReadVariableOp#precip/precip/MatMul/ReadVariableOp2B
precip_loss/AssignAddVariableOpprecip_loss/AssignAddVariableOp2F
!precip_loss/AssignAddVariableOp_1!precip_loss/AssignAddVariableOp_12N
%precip_loss/div_no_nan/ReadVariableOp%precip_loss/div_no_nan/ReadVariableOp2R
'precip_loss/div_no_nan/ReadVariableOp_1'precip_loss/div_no_nan/ReadVariableOp_12T
(reconst/dense_240/BiasAdd/ReadVariableOp(reconst/dense_240/BiasAdd/ReadVariableOp2R
'reconst/dense_240/MatMul/ReadVariableOp'reconst/dense_240/MatMul/ReadVariableOp2T
(reconst/dense_241/BiasAdd/ReadVariableOp(reconst/dense_241/BiasAdd/ReadVariableOp2R
'reconst/dense_241/MatMul/ReadVariableOp'reconst/dense_241/MatMul/ReadVariableOp2T
(reconst/dense_242/BiasAdd/ReadVariableOp(reconst/dense_242/BiasAdd/ReadVariableOp2R
'reconst/dense_242/MatMul/ReadVariableOp'reconst/dense_242/MatMul/ReadVariableOp2T
(reconst/dense_243/BiasAdd/ReadVariableOp(reconst/dense_243/BiasAdd/ReadVariableOp2R
'reconst/dense_243/MatMul/ReadVariableOp'reconst/dense_243/MatMul/ReadVariableOp2T
(reconst/dense_244/BiasAdd/ReadVariableOp(reconst/dense_244/BiasAdd/ReadVariableOp2R
'reconst/dense_244/MatMul/ReadVariableOp'reconst/dense_244/MatMul/ReadVariableOp2T
(reconst/dense_245/BiasAdd/ReadVariableOp(reconst/dense_245/BiasAdd/ReadVariableOp2R
'reconst/dense_245/MatMul/ReadVariableOp'reconst/dense_245/MatMul/ReadVariableOp2D
 rotationloss/AssignAddVariableOp rotationloss/AssignAddVariableOp2H
"rotationloss/AssignAddVariableOp_1"rotationloss/AssignAddVariableOp_12H
"rotationloss/AssignAddVariableOp_2"rotationloss/AssignAddVariableOp_22H
"rotationloss/AssignAddVariableOp_3"rotationloss/AssignAddVariableOp_32P
&rotationloss/div_no_nan/ReadVariableOp&rotationloss/div_no_nan/ReadVariableOp2T
(rotationloss/div_no_nan/ReadVariableOp_1(rotationloss/div_no_nan/ReadVariableOp_12T
(rotationloss/div_no_nan_1/ReadVariableOp(rotationloss/div_no_nan_1/ReadVariableOp2X
*rotationloss/div_no_nan_1/ReadVariableOp_1*rotationloss/div_no_nan_1/ReadVariableOp_1:Y U
/
_output_shapes
:���������  
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�
g
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767144

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Hrandom_flip_41_map_while_stateless_random_flip_left_right_false_13767374�
�random_flip_41_map_while_stateless_random_flip_left_right_identity_random_flip_41_map_while_stateless_random_flip_left_right_control_dependencyF
Brandom_flip_41_map_while_stateless_random_flip_left_right_identity�
Brandom_flip_41/map/while/stateless_random_flip_left_right/IdentityIdentity�random_flip_41_map_while_stateless_random_flip_left_right_identity_random_flip_41_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "�
Brandom_flip_41_map_while_stateless_random_flip_left_right_identityKrandom_flip_41/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�>
�	
E__inference_reconst_layer_call_and_return_conditional_losses_13767694

inputs:
(dense_240_matmul_readvariableop_resource:@7
)dense_240_biasadd_readvariableop_resource:@;
(dense_241_matmul_readvariableop_resource:	@�8
)dense_241_biasadd_readvariableop_resource:	�<
(dense_242_matmul_readvariableop_resource:
��8
)dense_242_biasadd_readvariableop_resource:	�<
(dense_243_matmul_readvariableop_resource:
��8
)dense_243_biasadd_readvariableop_resource:	�<
(dense_244_matmul_readvariableop_resource:
��8
)dense_244_biasadd_readvariableop_resource:	�<
(dense_245_matmul_readvariableop_resource:
��8
)dense_245_biasadd_readvariableop_resource:	�
identity�� dense_240/BiasAdd/ReadVariableOp�dense_240/MatMul/ReadVariableOp� dense_241/BiasAdd/ReadVariableOp�dense_241/MatMul/ReadVariableOp� dense_242/BiasAdd/ReadVariableOp�dense_242/MatMul/ReadVariableOp� dense_243/BiasAdd/ReadVariableOp�dense_243/MatMul/ReadVariableOp� dense_244/BiasAdd/ReadVariableOp�dense_244/MatMul/ReadVariableOp� dense_245/BiasAdd/ReadVariableOp�dense_245/MatMul/ReadVariableOp�
dense_240/MatMul/ReadVariableOpReadVariableOp(dense_240_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0}
dense_240/MatMulMatMulinputs'dense_240/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
 dense_240/BiasAdd/ReadVariableOpReadVariableOp)dense_240_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_240/BiasAddBiasAdddense_240/MatMul:product:0(dense_240/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_240/ReluReludense_240/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_241/MatMul/ReadVariableOpReadVariableOp(dense_241_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
dense_241/MatMulMatMuldense_240/Relu:activations:0'dense_241/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_241/BiasAdd/ReadVariableOpReadVariableOp)dense_241_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_241/BiasAddBiasAdddense_241/MatMul:product:0(dense_241/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_241/ReluReludense_241/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_242/MatMul/ReadVariableOpReadVariableOp(dense_242_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_242/MatMulMatMuldense_241/Relu:activations:0'dense_242/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_242/BiasAdd/ReadVariableOpReadVariableOp)dense_242_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_242/BiasAddBiasAdddense_242/MatMul:product:0(dense_242/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_242/ReluReludense_242/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_243/MatMul/ReadVariableOpReadVariableOp(dense_243_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_243/MatMulMatMuldense_242/Relu:activations:0'dense_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_243/BiasAdd/ReadVariableOpReadVariableOp)dense_243_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_243/BiasAddBiasAdddense_243/MatMul:product:0(dense_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_243/ReluReludense_243/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_244/MatMul/ReadVariableOpReadVariableOp(dense_244_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_244/MatMulMatMuldense_243/Relu:activations:0'dense_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_244/BiasAdd/ReadVariableOpReadVariableOp)dense_244_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_244/BiasAddBiasAdddense_244/MatMul:product:0(dense_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_244/ReluReludense_244/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_245/MatMul/ReadVariableOpReadVariableOp(dense_245_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_245/MatMulMatMuldense_244/Relu:activations:0'dense_245/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_245/BiasAdd/ReadVariableOpReadVariableOp)dense_245_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_245/BiasAddBiasAdddense_245/MatMul:product:0(dense_245/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������W
Reconst/ShapeShapedense_245/BiasAdd:output:0*
T0*
_output_shapes
:e
Reconst/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Reconst/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Reconst/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Reconst/strided_sliceStridedSliceReconst/Shape:output:0$Reconst/strided_slice/stack:output:0&Reconst/strided_slice/stack_1:output:0&Reconst/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Reconst/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : Y
Reconst/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reconst/Reshape/shapePackReconst/strided_slice:output:0 Reconst/Reshape/shape/1:output:0 Reconst/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
Reconst/ReshapeReshapedense_245/BiasAdd:output:0Reconst/Reshape/shape:output:0*
T0*+
_output_shapes
:���������  k
IdentityIdentityReconst/Reshape:output:0^NoOp*
T0*+
_output_shapes
:���������  �
NoOpNoOp!^dense_240/BiasAdd/ReadVariableOp ^dense_240/MatMul/ReadVariableOp!^dense_241/BiasAdd/ReadVariableOp ^dense_241/MatMul/ReadVariableOp!^dense_242/BiasAdd/ReadVariableOp ^dense_242/MatMul/ReadVariableOp!^dense_243/BiasAdd/ReadVariableOp ^dense_243/MatMul/ReadVariableOp!^dense_244/BiasAdd/ReadVariableOp ^dense_244/MatMul/ReadVariableOp!^dense_245/BiasAdd/ReadVariableOp ^dense_245/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2D
 dense_240/BiasAdd/ReadVariableOp dense_240/BiasAdd/ReadVariableOp2B
dense_240/MatMul/ReadVariableOpdense_240/MatMul/ReadVariableOp2D
 dense_241/BiasAdd/ReadVariableOp dense_241/BiasAdd/ReadVariableOp2B
dense_241/MatMul/ReadVariableOpdense_241/MatMul/ReadVariableOp2D
 dense_242/BiasAdd/ReadVariableOp dense_242/BiasAdd/ReadVariableOp2B
dense_242/MatMul/ReadVariableOpdense_242/MatMul/ReadVariableOp2D
 dense_243/BiasAdd/ReadVariableOp dense_243/BiasAdd/ReadVariableOp2B
dense_243/MatMul/ReadVariableOpdense_243/MatMul/ReadVariableOp2D
 dense_244/BiasAdd/ReadVariableOp dense_244/BiasAdd/ReadVariableOp2B
dense_244/MatMul/ReadVariableOpdense_244/MatMul/ReadVariableOp2D
 dense_245/BiasAdd/ReadVariableOp dense_245/BiasAdd/ReadVariableOp2B
dense_245/MatMul/ReadVariableOpdense_245/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_conv2d_60_layer_call_fn_13767964

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13763386w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������" : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������" 
 
_user_specified_nameinputs
�
�
,__inference_dense_241_layer_call_fn_13768521

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_241_layer_call_and_return_conditional_losses_13764433p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�,
�
D__inference_precip_layer_call_and_return_conditional_losses_13767544

inputs;
(dense_248_matmul_readvariableop_resource:	�8
)dense_248_biasadd_readvariableop_resource:	�<
(dense_249_matmul_readvariableop_resource:
��8
)dense_249_biasadd_readvariableop_resource:	�<
(dense_250_matmul_readvariableop_resource:
��8
)dense_250_biasadd_readvariableop_resource:	�;
(dense_251_matmul_readvariableop_resource:	�@7
)dense_251_biasadd_readvariableop_resource:@7
%precip_matmul_readvariableop_resource:@4
&precip_biasadd_readvariableop_resource:
identity�� dense_248/BiasAdd/ReadVariableOp�dense_248/MatMul/ReadVariableOp� dense_249/BiasAdd/ReadVariableOp�dense_249/MatMul/ReadVariableOp� dense_250/BiasAdd/ReadVariableOp�dense_250/MatMul/ReadVariableOp� dense_251/BiasAdd/ReadVariableOp�dense_251/MatMul/ReadVariableOp�precip/BiasAdd/ReadVariableOp�precip/MatMul/ReadVariableOp�
dense_248/MatMul/ReadVariableOpReadVariableOp(dense_248_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0~
dense_248/MatMulMatMulinputs'dense_248/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_248/BiasAdd/ReadVariableOpReadVariableOp)dense_248_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_248/BiasAddBiasAdddense_248/MatMul:product:0(dense_248/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_248/ReluReludense_248/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_249/MatMul/ReadVariableOpReadVariableOp(dense_249_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_249/MatMulMatMuldense_248/Relu:activations:0'dense_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_249/BiasAdd/ReadVariableOpReadVariableOp)dense_249_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_249/BiasAddBiasAdddense_249/MatMul:product:0(dense_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_249/ReluReludense_249/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_250/MatMul/ReadVariableOpReadVariableOp(dense_250_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_250/MatMulMatMuldense_249/Relu:activations:0'dense_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_250/BiasAdd/ReadVariableOpReadVariableOp)dense_250_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_250/BiasAddBiasAdddense_250/MatMul:product:0(dense_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_250/ReluReludense_250/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_251/MatMul/ReadVariableOpReadVariableOp(dense_251_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_251/MatMulMatMuldense_250/Relu:activations:0'dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
 dense_251/BiasAdd/ReadVariableOpReadVariableOp)dense_251_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_251/BiasAddBiasAdddense_251/MatMul:product:0(dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_251/ReluReludense_251/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
precip/MatMul/ReadVariableOpReadVariableOp%precip_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
precip/MatMulMatMuldense_251/Relu:activations:0$precip/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
precip/BiasAdd/ReadVariableOpReadVariableOp&precip_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
precip/BiasAddBiasAddprecip/MatMul:product:0%precip/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
IdentityIdentityprecip/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_248/BiasAdd/ReadVariableOp ^dense_248/MatMul/ReadVariableOp!^dense_249/BiasAdd/ReadVariableOp ^dense_249/MatMul/ReadVariableOp!^dense_250/BiasAdd/ReadVariableOp ^dense_250/MatMul/ReadVariableOp!^dense_251/BiasAdd/ReadVariableOp ^dense_251/MatMul/ReadVariableOp^precip/BiasAdd/ReadVariableOp^precip/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2D
 dense_248/BiasAdd/ReadVariableOp dense_248/BiasAdd/ReadVariableOp2B
dense_248/MatMul/ReadVariableOpdense_248/MatMul/ReadVariableOp2D
 dense_249/BiasAdd/ReadVariableOp dense_249/BiasAdd/ReadVariableOp2B
dense_249/MatMul/ReadVariableOpdense_249/MatMul/ReadVariableOp2D
 dense_250/BiasAdd/ReadVariableOp dense_250/BiasAdd/ReadVariableOp2B
dense_250/MatMul/ReadVariableOpdense_250/MatMul/ReadVariableOp2D
 dense_251/BiasAdd/ReadVariableOp dense_251/BiasAdd/ReadVariableOp2B
dense_251/MatMul/ReadVariableOpdense_251/MatMul/ReadVariableOp2>
precip/BiasAdd/ReadVariableOpprecip/BiasAdd/ReadVariableOp2<
precip/MatMul/ReadVariableOpprecip/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
h
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13763668

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Usequential_20_random_flip_41_map_while_stateless_random_flip_left_right_true_13766663�
�sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_reversev2_sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_control_dependencyT
Psequential_20_random_flip_41_map_while_stateless_random_flip_left_right_identity�
Vsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Qsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_reversev2_sequential_20_random_flip_41_map_while_stateless_random_flip_left_right_control_dependency_sequential_20/random_flip_41/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
Psequential_20/random_flip_41/map/while/stateless_random_flip_left_right/IdentityIdentityZsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
Psequential_20_random_flip_41_map_while_stateless_random_flip_left_right_identityYsequential_20/random_flip_41/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

�
G__inference_dense_241_layer_call_and_return_conditional_losses_13768532

inputs1
matmul_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
G__inference_dense_251_layer_call_and_return_conditional_losses_13768473

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5map_while_stateless_random_flip_up_down_true_13768359p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

�
G__inference_dense_250_layer_call_and_return_conditional_losses_13768453

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_random_flip_41_layer_call_fn_13768231

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763846w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
,__inference_dense_240_layer_call_fn_13768501

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_240_layer_call_and_return_conditional_losses_13764416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
+__inference_model_34_layer_call_fn_13767022

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_34_layer_call_and_return_conditional_losses_13763451o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
h
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768235

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
*__inference_reconst_layer_call_fn_13764737
	input_155
unknown:@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_155unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764681s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_155
��
�+
#__inference__wrapped_model_13763354
	input_158
	input_159
	input_160T
:model_35_model_34_conv2d_60_conv2d_readvariableop_resource:I
;model_35_model_34_conv2d_60_biasadd_readvariableop_resource:T
:model_35_model_34_conv2d_61_conv2d_readvariableop_resource:I
;model_35_model_34_conv2d_61_biasadd_readvariableop_resource:T
:model_35_model_34_conv2d_62_conv2d_readvariableop_resource:I
;model_35_model_34_conv2d_62_biasadd_readvariableop_resource:I
6model_35_model_34_xmean_matmul_readvariableop_resource:	�E
7model_35_model_34_xmean_biasadd_readvariableop_resource:K
9model_35_reconst_dense_240_matmul_readvariableop_resource:@H
:model_35_reconst_dense_240_biasadd_readvariableop_resource:@L
9model_35_reconst_dense_241_matmul_readvariableop_resource:	@�I
:model_35_reconst_dense_241_biasadd_readvariableop_resource:	�M
9model_35_reconst_dense_242_matmul_readvariableop_resource:
��I
:model_35_reconst_dense_242_biasadd_readvariableop_resource:	�M
9model_35_reconst_dense_243_matmul_readvariableop_resource:
��I
:model_35_reconst_dense_243_biasadd_readvariableop_resource:	�M
9model_35_reconst_dense_244_matmul_readvariableop_resource:
��I
:model_35_reconst_dense_244_biasadd_readvariableop_resource:	�M
9model_35_reconst_dense_245_matmul_readvariableop_resource:
��I
:model_35_reconst_dense_245_biasadd_readvariableop_resource:	�K
8model_35_precip_dense_248_matmul_readvariableop_resource:	�H
9model_35_precip_dense_248_biasadd_readvariableop_resource:	�L
8model_35_precip_dense_249_matmul_readvariableop_resource:
��H
9model_35_precip_dense_249_biasadd_readvariableop_resource:	�L
8model_35_precip_dense_250_matmul_readvariableop_resource:
��H
9model_35_precip_dense_250_biasadd_readvariableop_resource:	�K
8model_35_precip_dense_251_matmul_readvariableop_resource:	�@G
9model_35_precip_dense_251_biasadd_readvariableop_resource:@G
5model_35_precip_precip_matmul_readvariableop_resource:@D
6model_35_precip_precip_biasadd_readvariableop_resource:<
2model_35_rotationloss_assignaddvariableop_resource: >
4model_35_rotationloss_assignaddvariableop_1_resource: >
4model_35_rotationloss_assignaddvariableop_2_resource: >
4model_35_rotationloss_assignaddvariableop_3_resource: 7
-model_35_hr_loss_assignaddvariableop_resource: 9
/model_35_hr_loss_assignaddvariableop_1_resource: ;
1model_35_precip_loss_assignaddvariableop_resource: =
3model_35_precip_loss_assignaddvariableop_1_resource: 
identity

identity_1

identity_2��$model_35/hr_loss/AssignAddVariableOp�&model_35/hr_loss/AssignAddVariableOp_1�*model_35/hr_loss/div_no_nan/ReadVariableOp�,model_35/hr_loss/div_no_nan/ReadVariableOp_1�2model_35/model_34/conv2d_60/BiasAdd/ReadVariableOp�4model_35/model_34/conv2d_60/BiasAdd_1/ReadVariableOp�1model_35/model_34/conv2d_60/Conv2D/ReadVariableOp�3model_35/model_34/conv2d_60/Conv2D_1/ReadVariableOp�2model_35/model_34/conv2d_61/BiasAdd/ReadVariableOp�4model_35/model_34/conv2d_61/BiasAdd_1/ReadVariableOp�1model_35/model_34/conv2d_61/Conv2D/ReadVariableOp�3model_35/model_34/conv2d_61/Conv2D_1/ReadVariableOp�2model_35/model_34/conv2d_62/BiasAdd/ReadVariableOp�4model_35/model_34/conv2d_62/BiasAdd_1/ReadVariableOp�1model_35/model_34/conv2d_62/Conv2D/ReadVariableOp�3model_35/model_34/conv2d_62/Conv2D_1/ReadVariableOp�.model_35/model_34/xmean/BiasAdd/ReadVariableOp�0model_35/model_34/xmean/BiasAdd_1/ReadVariableOp�-model_35/model_34/xmean/MatMul/ReadVariableOp�/model_35/model_34/xmean/MatMul_1/ReadVariableOp�0model_35/precip/dense_248/BiasAdd/ReadVariableOp�/model_35/precip/dense_248/MatMul/ReadVariableOp�0model_35/precip/dense_249/BiasAdd/ReadVariableOp�/model_35/precip/dense_249/MatMul/ReadVariableOp�0model_35/precip/dense_250/BiasAdd/ReadVariableOp�/model_35/precip/dense_250/MatMul/ReadVariableOp�0model_35/precip/dense_251/BiasAdd/ReadVariableOp�/model_35/precip/dense_251/MatMul/ReadVariableOp�-model_35/precip/precip/BiasAdd/ReadVariableOp�,model_35/precip/precip/MatMul/ReadVariableOp�(model_35/precip_loss/AssignAddVariableOp�*model_35/precip_loss/AssignAddVariableOp_1�.model_35/precip_loss/div_no_nan/ReadVariableOp�0model_35/precip_loss/div_no_nan/ReadVariableOp_1�1model_35/reconst/dense_240/BiasAdd/ReadVariableOp�0model_35/reconst/dense_240/MatMul/ReadVariableOp�1model_35/reconst/dense_241/BiasAdd/ReadVariableOp�0model_35/reconst/dense_241/MatMul/ReadVariableOp�1model_35/reconst/dense_242/BiasAdd/ReadVariableOp�0model_35/reconst/dense_242/MatMul/ReadVariableOp�1model_35/reconst/dense_243/BiasAdd/ReadVariableOp�0model_35/reconst/dense_243/MatMul/ReadVariableOp�1model_35/reconst/dense_244/BiasAdd/ReadVariableOp�0model_35/reconst/dense_244/MatMul/ReadVariableOp�1model_35/reconst/dense_245/BiasAdd/ReadVariableOp�0model_35/reconst/dense_245/MatMul/ReadVariableOp�)model_35/rotationloss/AssignAddVariableOp�+model_35/rotationloss/AssignAddVariableOp_1�+model_35/rotationloss/AssignAddVariableOp_2�+model_35/rotationloss/AssignAddVariableOp_3�/model_35/rotationloss/div_no_nan/ReadVariableOp�1model_35/rotationloss/div_no_nan/ReadVariableOp_1�1model_35/rotationloss/div_no_nan_1/ReadVariableOp�3model_35/rotationloss/div_no_nan_1/ReadVariableOp_1�
0model_35/model_34/zero_padding2d_20/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
'model_35/model_34/zero_padding2d_20/PadPad	input_1589model_35/model_34/zero_padding2d_20/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
1model_35/model_34/conv2d_60/Conv2D/ReadVariableOpReadVariableOp:model_35_model_34_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
"model_35/model_34/conv2d_60/Conv2DConv2D0model_35/model_34/zero_padding2d_20/Pad:output:09model_35/model_34/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
2model_35/model_34/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp;model_35_model_34_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_35/model_34/conv2d_60/BiasAddBiasAdd+model_35/model_34/conv2d_60/Conv2D:output:0:model_35/model_34/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
 model_35/model_34/conv2d_60/ReluRelu,model_35/model_34/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:����������
1model_35/model_34/conv2d_61/Conv2D/ReadVariableOpReadVariableOp:model_35_model_34_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
"model_35/model_34/conv2d_61/Conv2DConv2D.model_35/model_34/conv2d_60/Relu:activations:09model_35/model_34/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
2model_35/model_34/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp;model_35_model_34_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_35/model_34/conv2d_61/BiasAddBiasAdd+model_35/model_34/conv2d_61/Conv2D:output:0:model_35/model_34/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	�
 model_35/model_34/conv2d_61/ReluRelu,model_35/model_34/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
1model_35/model_34/conv2d_62/Conv2D/ReadVariableOpReadVariableOp:model_35_model_34_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
"model_35/model_34/conv2d_62/Conv2DConv2D.model_35/model_34/conv2d_61/Relu:activations:09model_35/model_34/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
2model_35/model_34/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp;model_35_model_34_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_35/model_34/conv2d_62/BiasAddBiasAdd+model_35/model_34/conv2d_62/Conv2D:output:0:model_35/model_34/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
 model_35/model_34/conv2d_62/ReluRelu,model_35/model_34/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������s
"model_35/model_34/flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
$model_35/model_34/flatten_20/ReshapeReshape.model_35/model_34/conv2d_62/Relu:activations:0+model_35/model_34/flatten_20/Const:output:0*
T0*(
_output_shapes
:�����������
-model_35/model_34/xmean/MatMul/ReadVariableOpReadVariableOp6model_35_model_34_xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_35/model_34/xmean/MatMulMatMul-model_35/model_34/flatten_20/Reshape:output:05model_35/model_34/xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.model_35/model_34/xmean/BiasAdd/ReadVariableOpReadVariableOp7model_35_model_34_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_35/model_34/xmean/BiasAddBiasAdd(model_35/model_34/xmean/MatMul:product:06model_35/model_34/xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
#model_35/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_35/concatenate_18/concatConcatV2(model_35/model_34/xmean/BiasAdd:output:0	input_159,model_35/concatenate_18/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
2model_35/model_34/zero_padding2d_20/Pad_1/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
)model_35/model_34/zero_padding2d_20/Pad_1Pad	input_158;model_35/model_34/zero_padding2d_20/Pad_1/paddings:output:0*
T0*/
_output_shapes
:���������" �
3model_35/model_34/conv2d_60/Conv2D_1/ReadVariableOpReadVariableOp:model_35_model_34_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
$model_35/model_34/conv2d_60/Conv2D_1Conv2D2model_35/model_34/zero_padding2d_20/Pad_1:output:0;model_35/model_34/conv2d_60/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
4model_35/model_34/conv2d_60/BiasAdd_1/ReadVariableOpReadVariableOp;model_35_model_34_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%model_35/model_34/conv2d_60/BiasAdd_1BiasAdd-model_35/model_34/conv2d_60/Conv2D_1:output:0<model_35/model_34/conv2d_60/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
"model_35/model_34/conv2d_60/Relu_1Relu.model_35/model_34/conv2d_60/BiasAdd_1:output:0*
T0*/
_output_shapes
:����������
3model_35/model_34/conv2d_61/Conv2D_1/ReadVariableOpReadVariableOp:model_35_model_34_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
$model_35/model_34/conv2d_61/Conv2D_1Conv2D0model_35/model_34/conv2d_60/Relu_1:activations:0;model_35/model_34/conv2d_61/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
4model_35/model_34/conv2d_61/BiasAdd_1/ReadVariableOpReadVariableOp;model_35_model_34_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%model_35/model_34/conv2d_61/BiasAdd_1BiasAdd-model_35/model_34/conv2d_61/Conv2D_1:output:0<model_35/model_34/conv2d_61/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	�
"model_35/model_34/conv2d_61/Relu_1Relu.model_35/model_34/conv2d_61/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������	�
3model_35/model_34/conv2d_62/Conv2D_1/ReadVariableOpReadVariableOp:model_35_model_34_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
$model_35/model_34/conv2d_62/Conv2D_1Conv2D0model_35/model_34/conv2d_61/Relu_1:activations:0;model_35/model_34/conv2d_62/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
4model_35/model_34/conv2d_62/BiasAdd_1/ReadVariableOpReadVariableOp;model_35_model_34_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%model_35/model_34/conv2d_62/BiasAdd_1BiasAdd-model_35/model_34/conv2d_62/Conv2D_1:output:0<model_35/model_34/conv2d_62/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
"model_35/model_34/conv2d_62/Relu_1Relu.model_35/model_34/conv2d_62/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������u
$model_35/model_34/flatten_20/Const_1Const*
_output_shapes
:*
dtype0*
valueB"�����   �
&model_35/model_34/flatten_20/Reshape_1Reshape0model_35/model_34/conv2d_62/Relu_1:activations:0-model_35/model_34/flatten_20/Const_1:output:0*
T0*(
_output_shapes
:�����������
/model_35/model_34/xmean/MatMul_1/ReadVariableOpReadVariableOp6model_35_model_34_xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 model_35/model_34/xmean/MatMul_1MatMul/model_35/model_34/flatten_20/Reshape_1:output:07model_35/model_34/xmean/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0model_35/model_34/xmean/BiasAdd_1/ReadVariableOpReadVariableOp7model_35_model_34_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!model_35/model_34/xmean/BiasAdd_1BiasAdd*model_35/model_34/xmean/MatMul_1:product:08model_35/model_34/xmean/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0model_35/reconst/dense_240/MatMul/ReadVariableOpReadVariableOp9model_35_reconst_dense_240_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
!model_35/reconst/dense_240/MatMulMatMul(model_35/model_34/xmean/BiasAdd:output:08model_35/reconst/dense_240/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
1model_35/reconst/dense_240/BiasAdd/ReadVariableOpReadVariableOp:model_35_reconst_dense_240_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
"model_35/reconst/dense_240/BiasAddBiasAdd+model_35/reconst/dense_240/MatMul:product:09model_35/reconst/dense_240/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
model_35/reconst/dense_240/ReluRelu+model_35/reconst/dense_240/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
0model_35/reconst/dense_241/MatMul/ReadVariableOpReadVariableOp9model_35_reconst_dense_241_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
!model_35/reconst/dense_241/MatMulMatMul-model_35/reconst/dense_240/Relu:activations:08model_35/reconst/dense_241/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1model_35/reconst/dense_241/BiasAdd/ReadVariableOpReadVariableOp:model_35_reconst_dense_241_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"model_35/reconst/dense_241/BiasAddBiasAdd+model_35/reconst/dense_241/MatMul:product:09model_35/reconst/dense_241/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_35/reconst/dense_241/ReluRelu+model_35/reconst/dense_241/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
0model_35/reconst/dense_242/MatMul/ReadVariableOpReadVariableOp9model_35_reconst_dense_242_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!model_35/reconst/dense_242/MatMulMatMul-model_35/reconst/dense_241/Relu:activations:08model_35/reconst/dense_242/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1model_35/reconst/dense_242/BiasAdd/ReadVariableOpReadVariableOp:model_35_reconst_dense_242_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"model_35/reconst/dense_242/BiasAddBiasAdd+model_35/reconst/dense_242/MatMul:product:09model_35/reconst/dense_242/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_35/reconst/dense_242/ReluRelu+model_35/reconst/dense_242/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
0model_35/reconst/dense_243/MatMul/ReadVariableOpReadVariableOp9model_35_reconst_dense_243_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!model_35/reconst/dense_243/MatMulMatMul-model_35/reconst/dense_242/Relu:activations:08model_35/reconst/dense_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1model_35/reconst/dense_243/BiasAdd/ReadVariableOpReadVariableOp:model_35_reconst_dense_243_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"model_35/reconst/dense_243/BiasAddBiasAdd+model_35/reconst/dense_243/MatMul:product:09model_35/reconst/dense_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_35/reconst/dense_243/ReluRelu+model_35/reconst/dense_243/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
0model_35/reconst/dense_244/MatMul/ReadVariableOpReadVariableOp9model_35_reconst_dense_244_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!model_35/reconst/dense_244/MatMulMatMul-model_35/reconst/dense_243/Relu:activations:08model_35/reconst/dense_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1model_35/reconst/dense_244/BiasAdd/ReadVariableOpReadVariableOp:model_35_reconst_dense_244_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"model_35/reconst/dense_244/BiasAddBiasAdd+model_35/reconst/dense_244/MatMul:product:09model_35/reconst/dense_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_35/reconst/dense_244/ReluRelu+model_35/reconst/dense_244/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
0model_35/reconst/dense_245/MatMul/ReadVariableOpReadVariableOp9model_35_reconst_dense_245_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!model_35/reconst/dense_245/MatMulMatMul-model_35/reconst/dense_244/Relu:activations:08model_35/reconst/dense_245/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1model_35/reconst/dense_245/BiasAdd/ReadVariableOpReadVariableOp:model_35_reconst_dense_245_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"model_35/reconst/dense_245/BiasAddBiasAdd+model_35/reconst/dense_245/MatMul:product:09model_35/reconst/dense_245/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
model_35/reconst/Reconst/ShapeShape+model_35/reconst/dense_245/BiasAdd:output:0*
T0*
_output_shapes
:v
,model_35/reconst/Reconst/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model_35/reconst/Reconst/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model_35/reconst/Reconst/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&model_35/reconst/Reconst/strided_sliceStridedSlice'model_35/reconst/Reconst/Shape:output:05model_35/reconst/Reconst/strided_slice/stack:output:07model_35/reconst/Reconst/strided_slice/stack_1:output:07model_35/reconst/Reconst/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(model_35/reconst/Reconst/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : j
(model_35/reconst/Reconst/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
&model_35/reconst/Reconst/Reshape/shapePack/model_35/reconst/Reconst/strided_slice:output:01model_35/reconst/Reconst/Reshape/shape/1:output:01model_35/reconst/Reconst/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
 model_35/reconst/Reconst/ReshapeReshape+model_35/reconst/dense_245/BiasAdd:output:0/model_35/reconst/Reconst/Reshape/shape:output:0*
T0*+
_output_shapes
:���������  �
/model_35/precip/dense_248/MatMul/ReadVariableOpReadVariableOp8model_35_precip_dense_248_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 model_35/precip/dense_248/MatMulMatMul'model_35/concatenate_18/concat:output:07model_35/precip/dense_248/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0model_35/precip/dense_248/BiasAdd/ReadVariableOpReadVariableOp9model_35_precip_dense_248_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!model_35/precip/dense_248/BiasAddBiasAdd*model_35/precip/dense_248/MatMul:product:08model_35/precip/dense_248/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_35/precip/dense_248/ReluRelu*model_35/precip/dense_248/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
/model_35/precip/dense_249/MatMul/ReadVariableOpReadVariableOp8model_35_precip_dense_249_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
 model_35/precip/dense_249/MatMulMatMul,model_35/precip/dense_248/Relu:activations:07model_35/precip/dense_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0model_35/precip/dense_249/BiasAdd/ReadVariableOpReadVariableOp9model_35_precip_dense_249_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!model_35/precip/dense_249/BiasAddBiasAdd*model_35/precip/dense_249/MatMul:product:08model_35/precip/dense_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_35/precip/dense_249/ReluRelu*model_35/precip/dense_249/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
/model_35/precip/dense_250/MatMul/ReadVariableOpReadVariableOp8model_35_precip_dense_250_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
 model_35/precip/dense_250/MatMulMatMul,model_35/precip/dense_249/Relu:activations:07model_35/precip/dense_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0model_35/precip/dense_250/BiasAdd/ReadVariableOpReadVariableOp9model_35_precip_dense_250_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!model_35/precip/dense_250/BiasAddBiasAdd*model_35/precip/dense_250/MatMul:product:08model_35/precip/dense_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_35/precip/dense_250/ReluRelu*model_35/precip/dense_250/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
/model_35/precip/dense_251/MatMul/ReadVariableOpReadVariableOp8model_35_precip_dense_251_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
 model_35/precip/dense_251/MatMulMatMul,model_35/precip/dense_250/Relu:activations:07model_35/precip/dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0model_35/precip/dense_251/BiasAdd/ReadVariableOpReadVariableOp9model_35_precip_dense_251_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!model_35/precip/dense_251/BiasAddBiasAdd*model_35/precip/dense_251/MatMul:product:08model_35/precip/dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
model_35/precip/dense_251/ReluRelu*model_35/precip/dense_251/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
,model_35/precip/precip/MatMul/ReadVariableOpReadVariableOp5model_35_precip_precip_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_35/precip/precip/MatMulMatMul,model_35/precip/dense_251/Relu:activations:04model_35/precip/precip/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-model_35/precip/precip/BiasAdd/ReadVariableOpReadVariableOp6model_35_precip_precip_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_35/precip/precip/BiasAddBiasAdd'model_35/precip/precip/MatMul:product:05model_35/precip/precip/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-model_35/rotationloss/mean_absolute_error/subSub*model_35/model_34/xmean/BiasAdd_1:output:0(model_35/model_34/xmean/BiasAdd:output:0*
T0*'
_output_shapes
:����������
-model_35/rotationloss/mean_absolute_error/AbsAbs1model_35/rotationloss/mean_absolute_error/sub:z:0*
T0*'
_output_shapes
:����������
@model_35/rotationloss/mean_absolute_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
.model_35/rotationloss/mean_absolute_error/MeanMean1model_35/rotationloss/mean_absolute_error/Abs:y:0Imodel_35/rotationloss/mean_absolute_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:����������
=model_35/rotationloss/mean_absolute_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
;model_35/rotationloss/mean_absolute_error/weighted_loss/MulMul7model_35/rotationloss/mean_absolute_error/Mean:output:0Fmodel_35/rotationloss/mean_absolute_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
?model_35/rotationloss/mean_absolute_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
;model_35/rotationloss/mean_absolute_error/weighted_loss/SumSum?model_35/rotationloss/mean_absolute_error/weighted_loss/Mul:z:0Hmodel_35/rotationloss/mean_absolute_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
Dmodel_35/rotationloss/mean_absolute_error/weighted_loss/num_elementsSize?model_35/rotationloss/mean_absolute_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
Imodel_35/rotationloss/mean_absolute_error/weighted_loss/num_elements/CastCastMmodel_35/rotationloss/mean_absolute_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: ~
<model_35/rotationloss/mean_absolute_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : �
Cmodel_35/rotationloss/mean_absolute_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
Cmodel_35/rotationloss/mean_absolute_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
=model_35/rotationloss/mean_absolute_error/weighted_loss/rangeRangeLmodel_35/rotationloss/mean_absolute_error/weighted_loss/range/start:output:0Emodel_35/rotationloss/mean_absolute_error/weighted_loss/Rank:output:0Lmodel_35/rotationloss/mean_absolute_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
=model_35/rotationloss/mean_absolute_error/weighted_loss/Sum_1SumDmodel_35/rotationloss/mean_absolute_error/weighted_loss/Sum:output:0Fmodel_35/rotationloss/mean_absolute_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
=model_35/rotationloss/mean_absolute_error/weighted_loss/valueDivNoNanFmodel_35/rotationloss/mean_absolute_error/weighted_loss/Sum_1:output:0Mmodel_35/rotationloss/mean_absolute_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: |
model_35/rotationloss/AbsAbs(model_35/model_34/xmean/BiasAdd:output:0*
T0*'
_output_shapes
:���������l
model_35/rotationloss/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
model_35/rotationloss/MeanMeanmodel_35/rotationloss/Abs:y:0$model_35/rotationloss/Const:output:0*
T0*
_output_shapes
: `
model_35/rotationloss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model_35/rotationloss/mulMul$model_35/rotationloss/mul/x:output:0Amodel_35/rotationloss/mean_absolute_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
model_35/rotationloss/truedivRealDivmodel_35/rotationloss/mul:z:0#model_35/rotationloss/Mean:output:0*
T0*
_output_shapes
: �
model_35/rotationloss/truediv_1RealDivAmodel_35/rotationloss/mean_absolute_error/weighted_loss/value:z:0#model_35/rotationloss/Mean:output:0*
T0*
_output_shapes
: \
model_35/rotationloss/RankConst*
_output_shapes
: *
dtype0*
value	B : c
!model_35/rotationloss/range/startConst*
_output_shapes
: *
dtype0*
value	B : c
!model_35/rotationloss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
model_35/rotationloss/rangeRange*model_35/rotationloss/range/start:output:0#model_35/rotationloss/Rank:output:0*model_35/rotationloss/range/delta:output:0*
_output_shapes
: �
model_35/rotationloss/SumSum#model_35/rotationloss/truediv_1:z:0$model_35/rotationloss/range:output:0*
T0*
_output_shapes
: �
)model_35/rotationloss/AssignAddVariableOpAssignAddVariableOp2model_35_rotationloss_assignaddvariableop_resource"model_35/rotationloss/Sum:output:0*
_output_shapes
 *
dtype0\
model_35/rotationloss/SizeConst*
_output_shapes
: *
dtype0*
value	B :w
model_35/rotationloss/CastCast#model_35/rotationloss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
+model_35/rotationloss/AssignAddVariableOp_1AssignAddVariableOp4model_35_rotationloss_assignaddvariableop_1_resourcemodel_35/rotationloss/Cast:y:0*^model_35/rotationloss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
/model_35/rotationloss/div_no_nan/ReadVariableOpReadVariableOp2model_35_rotationloss_assignaddvariableop_resource*^model_35/rotationloss/AssignAddVariableOp,^model_35/rotationloss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
1model_35/rotationloss/div_no_nan/ReadVariableOp_1ReadVariableOp4model_35_rotationloss_assignaddvariableop_1_resource,^model_35/rotationloss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
 model_35/rotationloss/div_no_nanDivNoNan7model_35/rotationloss/div_no_nan/ReadVariableOp:value:09model_35/rotationloss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: q
model_35/rotationloss/IdentityIdentity$model_35/rotationloss/div_no_nan:z:0*
T0*
_output_shapes
: ^
model_35/rotationloss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : e
#model_35/rotationloss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : e
#model_35/rotationloss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
model_35/rotationloss/range_1Range,model_35/rotationloss/range_1/start:output:0%model_35/rotationloss/Rank_1:output:0,model_35/rotationloss/range_1/delta:output:0*
_output_shapes
: �
model_35/rotationloss/Sum_1Sum#model_35/rotationloss/Mean:output:0&model_35/rotationloss/range_1:output:0*
T0*
_output_shapes
: �
+model_35/rotationloss/AssignAddVariableOp_2AssignAddVariableOp4model_35_rotationloss_assignaddvariableop_2_resource$model_35/rotationloss/Sum_1:output:0*
_output_shapes
 *
dtype0^
model_35/rotationloss/Size_1Const*
_output_shapes
: *
dtype0*
value	B :{
model_35/rotationloss/Cast_1Cast%model_35/rotationloss/Size_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
+model_35/rotationloss/AssignAddVariableOp_3AssignAddVariableOp4model_35_rotationloss_assignaddvariableop_3_resource model_35/rotationloss/Cast_1:y:0,^model_35/rotationloss/AssignAddVariableOp_2*
_output_shapes
 *
dtype0�
1model_35/rotationloss/div_no_nan_1/ReadVariableOpReadVariableOp4model_35_rotationloss_assignaddvariableop_2_resource,^model_35/rotationloss/AssignAddVariableOp_2,^model_35/rotationloss/AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
3model_35/rotationloss/div_no_nan_1/ReadVariableOp_1ReadVariableOp4model_35_rotationloss_assignaddvariableop_3_resource,^model_35/rotationloss/AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
"model_35/rotationloss/div_no_nan_1DivNoNan9model_35/rotationloss/div_no_nan_1/ReadVariableOp:value:0;model_35/rotationloss/div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: u
 model_35/rotationloss/Identity_1Identity&model_35/rotationloss/div_no_nan_1:z:0*
T0*
_output_shapes
: �
Hmodel_35/hr_loss/mean_squared_error/remove_squeezable_dimensions/SqueezeSqueeze	input_158*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
5model_35/hr_loss/mean_squared_error/SquaredDifferenceSquaredDifference)model_35/reconst/Reconst/Reshape:output:0Qmodel_35/hr_loss/mean_squared_error/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  �
:model_35/hr_loss/mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
(model_35/hr_loss/mean_squared_error/MeanMean9model_35/hr_loss/mean_squared_error/SquaredDifference:z:0Cmodel_35/hr_loss/mean_squared_error/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� |
7model_35/hr_loss/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5model_35/hr_loss/mean_squared_error/weighted_loss/MulMul1model_35/hr_loss/mean_squared_error/Mean:output:0@model_35/hr_loss/mean_squared_error/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� �
9model_35/hr_loss/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
5model_35/hr_loss/mean_squared_error/weighted_loss/SumSum9model_35/hr_loss/mean_squared_error/weighted_loss/Mul:z:0Bmodel_35/hr_loss/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
>model_35/hr_loss/mean_squared_error/weighted_loss/num_elementsSize9model_35/hr_loss/mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
Cmodel_35/hr_loss/mean_squared_error/weighted_loss/num_elements/CastCastGmodel_35/hr_loss/mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: x
6model_35/hr_loss/mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : 
=model_35/hr_loss/mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
=model_35/hr_loss/mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
7model_35/hr_loss/mean_squared_error/weighted_loss/rangeRangeFmodel_35/hr_loss/mean_squared_error/weighted_loss/range/start:output:0?model_35/hr_loss/mean_squared_error/weighted_loss/Rank:output:0Fmodel_35/hr_loss/mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
7model_35/hr_loss/mean_squared_error/weighted_loss/Sum_1Sum>model_35/hr_loss/mean_squared_error/weighted_loss/Sum:output:0@model_35/hr_loss/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
7model_35/hr_loss/mean_squared_error/weighted_loss/valueDivNoNan@model_35/hr_loss/mean_squared_error/weighted_loss/Sum_1:output:0Gmodel_35/hr_loss/mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: [
model_35/hr_loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model_35/hr_loss/mulMulmodel_35/hr_loss/mul/x:output:0;model_35/hr_loss/mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
Jmodel_35/hr_loss/mean_squared_error_1/remove_squeezable_dimensions/SqueezeSqueeze	input_158*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
7model_35/hr_loss/mean_squared_error_1/SquaredDifferenceSquaredDifference)model_35/reconst/Reconst/Reshape:output:0Smodel_35/hr_loss/mean_squared_error_1/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  �
<model_35/hr_loss/mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
*model_35/hr_loss/mean_squared_error_1/MeanMean;model_35/hr_loss/mean_squared_error_1/SquaredDifference:z:0Emodel_35/hr_loss/mean_squared_error_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� ~
9model_35/hr_loss/mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7model_35/hr_loss/mean_squared_error_1/weighted_loss/MulMul3model_35/hr_loss/mean_squared_error_1/Mean:output:0Bmodel_35/hr_loss/mean_squared_error_1/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� �
;model_35/hr_loss/mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
7model_35/hr_loss/mean_squared_error_1/weighted_loss/SumSum;model_35/hr_loss/mean_squared_error_1/weighted_loss/Mul:z:0Dmodel_35/hr_loss/mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
@model_35/hr_loss/mean_squared_error_1/weighted_loss/num_elementsSize;model_35/hr_loss/mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
Emodel_35/hr_loss/mean_squared_error_1/weighted_loss/num_elements/CastCastImodel_35/hr_loss/mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: z
8model_35/hr_loss/mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : �
?model_35/hr_loss/mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
?model_35/hr_loss/mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
9model_35/hr_loss/mean_squared_error_1/weighted_loss/rangeRangeHmodel_35/hr_loss/mean_squared_error_1/weighted_loss/range/start:output:0Amodel_35/hr_loss/mean_squared_error_1/weighted_loss/Rank:output:0Hmodel_35/hr_loss/mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
9model_35/hr_loss/mean_squared_error_1/weighted_loss/Sum_1Sum@model_35/hr_loss/mean_squared_error_1/weighted_loss/Sum:output:0Bmodel_35/hr_loss/mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
9model_35/hr_loss/mean_squared_error_1/weighted_loss/valueDivNoNanBmodel_35/hr_loss/mean_squared_error_1/weighted_loss/Sum_1:output:0Imodel_35/hr_loss/mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: W
model_35/hr_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : ^
model_35/hr_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : ^
model_35/hr_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
model_35/hr_loss/rangeRange%model_35/hr_loss/range/start:output:0model_35/hr_loss/Rank:output:0%model_35/hr_loss/range/delta:output:0*
_output_shapes
: �
model_35/hr_loss/SumSum=model_35/hr_loss/mean_squared_error_1/weighted_loss/value:z:0model_35/hr_loss/range:output:0*
T0*
_output_shapes
: �
$model_35/hr_loss/AssignAddVariableOpAssignAddVariableOp-model_35_hr_loss_assignaddvariableop_resourcemodel_35/hr_loss/Sum:output:0*
_output_shapes
 *
dtype0W
model_35/hr_loss/SizeConst*
_output_shapes
: *
dtype0*
value	B :m
model_35/hr_loss/CastCastmodel_35/hr_loss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
&model_35/hr_loss/AssignAddVariableOp_1AssignAddVariableOp/model_35_hr_loss_assignaddvariableop_1_resourcemodel_35/hr_loss/Cast:y:0%^model_35/hr_loss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
*model_35/hr_loss/div_no_nan/ReadVariableOpReadVariableOp-model_35_hr_loss_assignaddvariableop_resource%^model_35/hr_loss/AssignAddVariableOp'^model_35/hr_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
,model_35/hr_loss/div_no_nan/ReadVariableOp_1ReadVariableOp/model_35_hr_loss_assignaddvariableop_1_resource'^model_35/hr_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
model_35/hr_loss/div_no_nanDivNoNan2model_35/hr_loss/div_no_nan/ReadVariableOp:value:04model_35/hr_loss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: g
model_35/hr_loss/IdentityIdentitymodel_35/hr_loss/div_no_nan:z:0*
T0*
_output_shapes
: �
9model_35/precip_loss/mean_squared_error/SquaredDifferenceSquaredDifference'model_35/precip/precip/BiasAdd:output:0	input_160*
T0*'
_output_shapes
:����������
>model_35/precip_loss/mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
,model_35/precip_loss/mean_squared_error/MeanMean=model_35/precip_loss/mean_squared_error/SquaredDifference:z:0Gmodel_35/precip_loss/mean_squared_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:����������
;model_35/precip_loss/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
9model_35/precip_loss/mean_squared_error/weighted_loss/MulMul5model_35/precip_loss/mean_squared_error/Mean:output:0Dmodel_35/precip_loss/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
=model_35/precip_loss/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
9model_35/precip_loss/mean_squared_error/weighted_loss/SumSum=model_35/precip_loss/mean_squared_error/weighted_loss/Mul:z:0Fmodel_35/precip_loss/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
Bmodel_35/precip_loss/mean_squared_error/weighted_loss/num_elementsSize=model_35/precip_loss/mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
Gmodel_35/precip_loss/mean_squared_error/weighted_loss/num_elements/CastCastKmodel_35/precip_loss/mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: |
:model_35/precip_loss/mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : �
Amodel_35/precip_loss/mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
Amodel_35/precip_loss/mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
;model_35/precip_loss/mean_squared_error/weighted_loss/rangeRangeJmodel_35/precip_loss/mean_squared_error/weighted_loss/range/start:output:0Cmodel_35/precip_loss/mean_squared_error/weighted_loss/Rank:output:0Jmodel_35/precip_loss/mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
;model_35/precip_loss/mean_squared_error/weighted_loss/Sum_1SumBmodel_35/precip_loss/mean_squared_error/weighted_loss/Sum:output:0Dmodel_35/precip_loss/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
;model_35/precip_loss/mean_squared_error/weighted_loss/valueDivNoNanDmodel_35/precip_loss/mean_squared_error/weighted_loss/Sum_1:output:0Kmodel_35/precip_loss/mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: _
model_35/precip_loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
model_35/precip_loss/mulMul#model_35/precip_loss/mul/x:output:0?model_35/precip_loss/mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
;model_35/precip_loss/mean_squared_error_1/SquaredDifferenceSquaredDifference'model_35/precip/precip/BiasAdd:output:0	input_160*
T0*'
_output_shapes
:����������
@model_35/precip_loss/mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
.model_35/precip_loss/mean_squared_error_1/MeanMean?model_35/precip_loss/mean_squared_error_1/SquaredDifference:z:0Imodel_35/precip_loss/mean_squared_error_1/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:����������
=model_35/precip_loss/mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
;model_35/precip_loss/mean_squared_error_1/weighted_loss/MulMul7model_35/precip_loss/mean_squared_error_1/Mean:output:0Fmodel_35/precip_loss/mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
?model_35/precip_loss/mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
;model_35/precip_loss/mean_squared_error_1/weighted_loss/SumSum?model_35/precip_loss/mean_squared_error_1/weighted_loss/Mul:z:0Hmodel_35/precip_loss/mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
Dmodel_35/precip_loss/mean_squared_error_1/weighted_loss/num_elementsSize?model_35/precip_loss/mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
Imodel_35/precip_loss/mean_squared_error_1/weighted_loss/num_elements/CastCastMmodel_35/precip_loss/mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: ~
<model_35/precip_loss/mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : �
Cmodel_35/precip_loss/mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : �
Cmodel_35/precip_loss/mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
=model_35/precip_loss/mean_squared_error_1/weighted_loss/rangeRangeLmodel_35/precip_loss/mean_squared_error_1/weighted_loss/range/start:output:0Emodel_35/precip_loss/mean_squared_error_1/weighted_loss/Rank:output:0Lmodel_35/precip_loss/mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
=model_35/precip_loss/mean_squared_error_1/weighted_loss/Sum_1SumDmodel_35/precip_loss/mean_squared_error_1/weighted_loss/Sum:output:0Fmodel_35/precip_loss/mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
=model_35/precip_loss/mean_squared_error_1/weighted_loss/valueDivNoNanFmodel_35/precip_loss/mean_squared_error_1/weighted_loss/Sum_1:output:0Mmodel_35/precip_loss/mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: [
model_35/precip_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 model_35/precip_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 model_35/precip_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
model_35/precip_loss/rangeRange)model_35/precip_loss/range/start:output:0"model_35/precip_loss/Rank:output:0)model_35/precip_loss/range/delta:output:0*
_output_shapes
: �
model_35/precip_loss/SumSumAmodel_35/precip_loss/mean_squared_error_1/weighted_loss/value:z:0#model_35/precip_loss/range:output:0*
T0*
_output_shapes
: �
(model_35/precip_loss/AssignAddVariableOpAssignAddVariableOp1model_35_precip_loss_assignaddvariableop_resource!model_35/precip_loss/Sum:output:0*
_output_shapes
 *
dtype0[
model_35/precip_loss/SizeConst*
_output_shapes
: *
dtype0*
value	B :u
model_35/precip_loss/CastCast"model_35/precip_loss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*model_35/precip_loss/AssignAddVariableOp_1AssignAddVariableOp3model_35_precip_loss_assignaddvariableop_1_resourcemodel_35/precip_loss/Cast:y:0)^model_35/precip_loss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
.model_35/precip_loss/div_no_nan/ReadVariableOpReadVariableOp1model_35_precip_loss_assignaddvariableop_resource)^model_35/precip_loss/AssignAddVariableOp+^model_35/precip_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
0model_35/precip_loss/div_no_nan/ReadVariableOp_1ReadVariableOp3model_35_precip_loss_assignaddvariableop_1_resource+^model_35/precip_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
model_35/precip_loss/div_no_nanDivNoNan6model_35/precip_loss/div_no_nan/ReadVariableOp:value:08model_35/precip_loss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: o
model_35/precip_loss/IdentityIdentity#model_35/precip_loss/div_no_nan:z:0*
T0*
_output_shapes
: |
IdentityIdentity)model_35/reconst/Reconst/Reshape:output:0^NoOp*
T0*+
_output_shapes
:���������  x

Identity_1Identity'model_35/precip/precip/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_2IdentityAmodel_35/rotationloss/mean_absolute_error/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp%^model_35/hr_loss/AssignAddVariableOp'^model_35/hr_loss/AssignAddVariableOp_1+^model_35/hr_loss/div_no_nan/ReadVariableOp-^model_35/hr_loss/div_no_nan/ReadVariableOp_13^model_35/model_34/conv2d_60/BiasAdd/ReadVariableOp5^model_35/model_34/conv2d_60/BiasAdd_1/ReadVariableOp2^model_35/model_34/conv2d_60/Conv2D/ReadVariableOp4^model_35/model_34/conv2d_60/Conv2D_1/ReadVariableOp3^model_35/model_34/conv2d_61/BiasAdd/ReadVariableOp5^model_35/model_34/conv2d_61/BiasAdd_1/ReadVariableOp2^model_35/model_34/conv2d_61/Conv2D/ReadVariableOp4^model_35/model_34/conv2d_61/Conv2D_1/ReadVariableOp3^model_35/model_34/conv2d_62/BiasAdd/ReadVariableOp5^model_35/model_34/conv2d_62/BiasAdd_1/ReadVariableOp2^model_35/model_34/conv2d_62/Conv2D/ReadVariableOp4^model_35/model_34/conv2d_62/Conv2D_1/ReadVariableOp/^model_35/model_34/xmean/BiasAdd/ReadVariableOp1^model_35/model_34/xmean/BiasAdd_1/ReadVariableOp.^model_35/model_34/xmean/MatMul/ReadVariableOp0^model_35/model_34/xmean/MatMul_1/ReadVariableOp1^model_35/precip/dense_248/BiasAdd/ReadVariableOp0^model_35/precip/dense_248/MatMul/ReadVariableOp1^model_35/precip/dense_249/BiasAdd/ReadVariableOp0^model_35/precip/dense_249/MatMul/ReadVariableOp1^model_35/precip/dense_250/BiasAdd/ReadVariableOp0^model_35/precip/dense_250/MatMul/ReadVariableOp1^model_35/precip/dense_251/BiasAdd/ReadVariableOp0^model_35/precip/dense_251/MatMul/ReadVariableOp.^model_35/precip/precip/BiasAdd/ReadVariableOp-^model_35/precip/precip/MatMul/ReadVariableOp)^model_35/precip_loss/AssignAddVariableOp+^model_35/precip_loss/AssignAddVariableOp_1/^model_35/precip_loss/div_no_nan/ReadVariableOp1^model_35/precip_loss/div_no_nan/ReadVariableOp_12^model_35/reconst/dense_240/BiasAdd/ReadVariableOp1^model_35/reconst/dense_240/MatMul/ReadVariableOp2^model_35/reconst/dense_241/BiasAdd/ReadVariableOp1^model_35/reconst/dense_241/MatMul/ReadVariableOp2^model_35/reconst/dense_242/BiasAdd/ReadVariableOp1^model_35/reconst/dense_242/MatMul/ReadVariableOp2^model_35/reconst/dense_243/BiasAdd/ReadVariableOp1^model_35/reconst/dense_243/MatMul/ReadVariableOp2^model_35/reconst/dense_244/BiasAdd/ReadVariableOp1^model_35/reconst/dense_244/MatMul/ReadVariableOp2^model_35/reconst/dense_245/BiasAdd/ReadVariableOp1^model_35/reconst/dense_245/MatMul/ReadVariableOp*^model_35/rotationloss/AssignAddVariableOp,^model_35/rotationloss/AssignAddVariableOp_1,^model_35/rotationloss/AssignAddVariableOp_2,^model_35/rotationloss/AssignAddVariableOp_30^model_35/rotationloss/div_no_nan/ReadVariableOp2^model_35/rotationloss/div_no_nan/ReadVariableOp_12^model_35/rotationloss/div_no_nan_1/ReadVariableOp4^model_35/rotationloss/div_no_nan_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model_35/hr_loss/AssignAddVariableOp$model_35/hr_loss/AssignAddVariableOp2P
&model_35/hr_loss/AssignAddVariableOp_1&model_35/hr_loss/AssignAddVariableOp_12X
*model_35/hr_loss/div_no_nan/ReadVariableOp*model_35/hr_loss/div_no_nan/ReadVariableOp2\
,model_35/hr_loss/div_no_nan/ReadVariableOp_1,model_35/hr_loss/div_no_nan/ReadVariableOp_12h
2model_35/model_34/conv2d_60/BiasAdd/ReadVariableOp2model_35/model_34/conv2d_60/BiasAdd/ReadVariableOp2l
4model_35/model_34/conv2d_60/BiasAdd_1/ReadVariableOp4model_35/model_34/conv2d_60/BiasAdd_1/ReadVariableOp2f
1model_35/model_34/conv2d_60/Conv2D/ReadVariableOp1model_35/model_34/conv2d_60/Conv2D/ReadVariableOp2j
3model_35/model_34/conv2d_60/Conv2D_1/ReadVariableOp3model_35/model_34/conv2d_60/Conv2D_1/ReadVariableOp2h
2model_35/model_34/conv2d_61/BiasAdd/ReadVariableOp2model_35/model_34/conv2d_61/BiasAdd/ReadVariableOp2l
4model_35/model_34/conv2d_61/BiasAdd_1/ReadVariableOp4model_35/model_34/conv2d_61/BiasAdd_1/ReadVariableOp2f
1model_35/model_34/conv2d_61/Conv2D/ReadVariableOp1model_35/model_34/conv2d_61/Conv2D/ReadVariableOp2j
3model_35/model_34/conv2d_61/Conv2D_1/ReadVariableOp3model_35/model_34/conv2d_61/Conv2D_1/ReadVariableOp2h
2model_35/model_34/conv2d_62/BiasAdd/ReadVariableOp2model_35/model_34/conv2d_62/BiasAdd/ReadVariableOp2l
4model_35/model_34/conv2d_62/BiasAdd_1/ReadVariableOp4model_35/model_34/conv2d_62/BiasAdd_1/ReadVariableOp2f
1model_35/model_34/conv2d_62/Conv2D/ReadVariableOp1model_35/model_34/conv2d_62/Conv2D/ReadVariableOp2j
3model_35/model_34/conv2d_62/Conv2D_1/ReadVariableOp3model_35/model_34/conv2d_62/Conv2D_1/ReadVariableOp2`
.model_35/model_34/xmean/BiasAdd/ReadVariableOp.model_35/model_34/xmean/BiasAdd/ReadVariableOp2d
0model_35/model_34/xmean/BiasAdd_1/ReadVariableOp0model_35/model_34/xmean/BiasAdd_1/ReadVariableOp2^
-model_35/model_34/xmean/MatMul/ReadVariableOp-model_35/model_34/xmean/MatMul/ReadVariableOp2b
/model_35/model_34/xmean/MatMul_1/ReadVariableOp/model_35/model_34/xmean/MatMul_1/ReadVariableOp2d
0model_35/precip/dense_248/BiasAdd/ReadVariableOp0model_35/precip/dense_248/BiasAdd/ReadVariableOp2b
/model_35/precip/dense_248/MatMul/ReadVariableOp/model_35/precip/dense_248/MatMul/ReadVariableOp2d
0model_35/precip/dense_249/BiasAdd/ReadVariableOp0model_35/precip/dense_249/BiasAdd/ReadVariableOp2b
/model_35/precip/dense_249/MatMul/ReadVariableOp/model_35/precip/dense_249/MatMul/ReadVariableOp2d
0model_35/precip/dense_250/BiasAdd/ReadVariableOp0model_35/precip/dense_250/BiasAdd/ReadVariableOp2b
/model_35/precip/dense_250/MatMul/ReadVariableOp/model_35/precip/dense_250/MatMul/ReadVariableOp2d
0model_35/precip/dense_251/BiasAdd/ReadVariableOp0model_35/precip/dense_251/BiasAdd/ReadVariableOp2b
/model_35/precip/dense_251/MatMul/ReadVariableOp/model_35/precip/dense_251/MatMul/ReadVariableOp2^
-model_35/precip/precip/BiasAdd/ReadVariableOp-model_35/precip/precip/BiasAdd/ReadVariableOp2\
,model_35/precip/precip/MatMul/ReadVariableOp,model_35/precip/precip/MatMul/ReadVariableOp2T
(model_35/precip_loss/AssignAddVariableOp(model_35/precip_loss/AssignAddVariableOp2X
*model_35/precip_loss/AssignAddVariableOp_1*model_35/precip_loss/AssignAddVariableOp_12`
.model_35/precip_loss/div_no_nan/ReadVariableOp.model_35/precip_loss/div_no_nan/ReadVariableOp2d
0model_35/precip_loss/div_no_nan/ReadVariableOp_10model_35/precip_loss/div_no_nan/ReadVariableOp_12f
1model_35/reconst/dense_240/BiasAdd/ReadVariableOp1model_35/reconst/dense_240/BiasAdd/ReadVariableOp2d
0model_35/reconst/dense_240/MatMul/ReadVariableOp0model_35/reconst/dense_240/MatMul/ReadVariableOp2f
1model_35/reconst/dense_241/BiasAdd/ReadVariableOp1model_35/reconst/dense_241/BiasAdd/ReadVariableOp2d
0model_35/reconst/dense_241/MatMul/ReadVariableOp0model_35/reconst/dense_241/MatMul/ReadVariableOp2f
1model_35/reconst/dense_242/BiasAdd/ReadVariableOp1model_35/reconst/dense_242/BiasAdd/ReadVariableOp2d
0model_35/reconst/dense_242/MatMul/ReadVariableOp0model_35/reconst/dense_242/MatMul/ReadVariableOp2f
1model_35/reconst/dense_243/BiasAdd/ReadVariableOp1model_35/reconst/dense_243/BiasAdd/ReadVariableOp2d
0model_35/reconst/dense_243/MatMul/ReadVariableOp0model_35/reconst/dense_243/MatMul/ReadVariableOp2f
1model_35/reconst/dense_244/BiasAdd/ReadVariableOp1model_35/reconst/dense_244/BiasAdd/ReadVariableOp2d
0model_35/reconst/dense_244/MatMul/ReadVariableOp0model_35/reconst/dense_244/MatMul/ReadVariableOp2f
1model_35/reconst/dense_245/BiasAdd/ReadVariableOp1model_35/reconst/dense_245/BiasAdd/ReadVariableOp2d
0model_35/reconst/dense_245/MatMul/ReadVariableOp0model_35/reconst/dense_245/MatMul/ReadVariableOp2V
)model_35/rotationloss/AssignAddVariableOp)model_35/rotationloss/AssignAddVariableOp2Z
+model_35/rotationloss/AssignAddVariableOp_1+model_35/rotationloss/AssignAddVariableOp_12Z
+model_35/rotationloss/AssignAddVariableOp_2+model_35/rotationloss/AssignAddVariableOp_22Z
+model_35/rotationloss/AssignAddVariableOp_3+model_35/rotationloss/AssignAddVariableOp_32b
/model_35/rotationloss/div_no_nan/ReadVariableOp/model_35/rotationloss/div_no_nan/ReadVariableOp2f
1model_35/rotationloss/div_no_nan/ReadVariableOp_11model_35/rotationloss/div_no_nan/ReadVariableOp_12f
1model_35/rotationloss/div_no_nan_1/ReadVariableOp1model_35/rotationloss/div_no_nan_1/ReadVariableOp2j
3model_35/rotationloss/div_no_nan_1/ReadVariableOp_13model_35/rotationloss/div_no_nan_1/ReadVariableOp_1:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_158:RN
'
_output_shapes
:���������
#
_user_specified_name	input_159:RN
'
_output_shapes
:���������
#
_user_specified_name	input_160
�
�
Erandom_flip_41_map_while_stateless_random_flip_up_down_false_13767423�
�random_flip_41_map_while_stateless_random_flip_up_down_identity_random_flip_41_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_41_map_while_stateless_random_flip_up_down_identity�
?random_flip_41/map/while/stateless_random_flip_up_down/IdentityIdentity�random_flip_41_map_while_stateless_random_flip_up_down_identity_random_flip_41_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "�
?random_flip_41_map_while_stateless_random_flip_up_down_identityHrandom_flip_41/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
ϱ
�
&random_flip_40_map_while_body_13767160B
>random_flip_40_map_while_random_flip_40_map_while_loop_counter=
9random_flip_40_map_while_random_flip_40_map_strided_slice(
$random_flip_40_map_while_placeholder*
&random_flip_40_map_while_placeholder_1A
=random_flip_40_map_while_random_flip_40_map_strided_slice_1_0}
yrandom_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_40_map_tensorarrayunstack_tensorlistfromtensor_0Z
Lrandom_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	%
!random_flip_40_map_while_identity'
#random_flip_40_map_while_identity_1'
#random_flip_40_map_while_identity_2'
#random_flip_40_map_while_identity_3?
;random_flip_40_map_while_random_flip_40_map_strided_slice_1{
wrandom_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_40_map_tensorarrayunstack_tensorlistfromtensorX
Jrandom_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��Arandom_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip�Crandom_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Jrandom_flip_40/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
<random_flip_40/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemyrandom_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_40_map_tensorarrayunstack_tensorlistfromtensor_0$random_flip_40_map_while_placeholderSrandom_flip_40/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*"
_output_shapes
:  *
element_dtype0�
8random_flip_40/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
8random_flip_40/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7random_flip_40/map/while/stateful_uniform_full_int/ProdProdArandom_flip_40/map/while/stateful_uniform_full_int/shape:output:0Arandom_flip_40/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: {
9random_flip_40/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
9random_flip_40/map/while/stateful_uniform_full_int/Cast_1Cast@random_flip_40/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Arandom_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipLrandom_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Brandom_flip_40/map/while/stateful_uniform_full_int/Cast/x:output:0=random_flip_40/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Frandom_flip_40/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Hrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@random_flip_40/map/while/stateful_uniform_full_int/strided_sliceStridedSliceIrandom_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Orandom_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Qrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Qrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
:random_flip_40/map/while/stateful_uniform_full_int/BitcastBitcastIrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Hrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Jrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceIrandom_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Qrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Srandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Srandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
<random_flip_40/map/while/stateful_uniform_full_int/Bitcast_1BitcastKrandom_flip_40/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0x
6random_flip_40/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
2random_flip_40/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Arandom_flip_40/map/while/stateful_uniform_full_int/shape:output:0Erandom_flip_40/map/while/stateful_uniform_full_int/Bitcast_1:output:0Crandom_flip_40/map/while/stateful_uniform_full_int/Bitcast:output:0?random_flip_40/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	m
#random_flip_40/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_40/map/while/stackPack;random_flip_40/map/while/stateful_uniform_full_int:output:0,random_flip_40/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:}
,random_flip_40/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.random_flip_40/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.random_flip_40/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&random_flip_40/map/while/strided_sliceStridedSlice'random_flip_40/map/while/stack:output:05random_flip_40/map/while/strided_slice/stack:output:07random_flip_40/map/while/strided_slice/stack_1:output:07random_flip_40/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Lrandom_flip_40/map/while/stateless_random_flip_left_right/control_dependencyIdentityCrandom_flip_40/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*O
_classE
CAloc:@random_flip_40/map/while/TensorArrayV2Read/TensorListGetItem*"
_output_shapes
:  �
Xrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Vrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Vrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
orandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/random_flip_40/map/while/strided_slice:output:0* 
_output_shapes
::�
orandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
krandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2arandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0urandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0yrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Vrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub_random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Vrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMultrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Rrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Zrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_random_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
@random_flip_40/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
>random_flip_40/map/while/stateless_random_flip_left_right/LessLessVrandom_flip_40/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Irandom_flip_40/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
9random_flip_40/map/while/stateless_random_flip_left_rightStatelessIfBrandom_flip_40/map/while/stateless_random_flip_left_right/Less:z:0Urandom_flip_40/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *[
else_branchLRJ
Hrandom_flip_40_map_while_stateless_random_flip_left_right_false_13767220*!
output_shapes
:  *Z
then_branchKRI
Grandom_flip_40_map_while_stateless_random_flip_left_right_true_13767219�
Brandom_flip_40/map/while/stateless_random_flip_left_right/IdentityIdentityBrandom_flip_40/map/while/stateless_random_flip_left_right:output:0*
T0*"
_output_shapes
:  �
:random_flip_40/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
:random_flip_40/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9random_flip_40/map/while/stateful_uniform_full_int_1/ProdProdCrandom_flip_40/map/while/stateful_uniform_full_int_1/shape:output:0Crandom_flip_40/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: }
;random_flip_40/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
;random_flip_40/map/while/stateful_uniform_full_int_1/Cast_1CastBrandom_flip_40/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Crandom_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipLrandom_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Drandom_flip_40/map/while/stateful_uniform_full_int_1/Cast/x:output:0?random_flip_40/map/while/stateful_uniform_full_int_1/Cast_1:y:0B^random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Hrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Jrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip_40/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceKrandom_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Qrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Srandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Srandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
<random_flip_40/map/while/stateful_uniform_full_int_1/BitcastBitcastKrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Jrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Lrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Drandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceKrandom_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Srandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Urandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Urandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
>random_flip_40/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastMrandom_flip_40/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8random_flip_40/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
4random_flip_40/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Crandom_flip_40/map/while/stateful_uniform_full_int_1/shape:output:0Grandom_flip_40/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Erandom_flip_40/map/while/stateful_uniform_full_int_1/Bitcast:output:0Arandom_flip_40/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	o
%random_flip_40/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
 random_flip_40/map/while/stack_1Pack=random_flip_40/map/while/stateful_uniform_full_int_1:output:0.random_flip_40/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
.random_flip_40/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0random_flip_40/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0random_flip_40/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(random_flip_40/map/while/strided_slice_1StridedSlice)random_flip_40/map/while/stack_1:output:07random_flip_40/map/while/strided_slice_1/stack:output:09random_flip_40/map/while/strided_slice_1/stack_1:output:09random_flip_40/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Irandom_flip_40/map/while/stateless_random_flip_up_down/control_dependencyIdentityKrandom_flip_40/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*U
_classK
IGloc:@random_flip_40/map/while/stateless_random_flip_left_right/Identity*"
_output_shapes
:  �
Urandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Srandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Srandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1random_flip_40/map/while/strided_slice_1:output:0* 
_output_shapes
::�
lrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
hrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0rrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0urandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Srandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub\random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0\random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Srandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulqrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Wrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Orandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Wrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0\random_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=random_flip_40/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
;random_flip_40/map/while/stateless_random_flip_up_down/LessLessSrandom_flip_40/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Frandom_flip_40/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
6random_flip_40/map/while/stateless_random_flip_up_downStatelessIf?random_flip_40/map/while/stateless_random_flip_up_down/Less:z:0Rrandom_flip_40/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*"
_output_shapes
:  * 
_read_only_resource_inputs
 *X
else_branchIRG
Erandom_flip_40_map_while_stateless_random_flip_up_down_false_13767269*!
output_shapes
:  *W
then_branchHRF
Drandom_flip_40_map_while_stateless_random_flip_up_down_true_13767268�
?random_flip_40/map/while/stateless_random_flip_up_down/IdentityIdentity?random_flip_40/map/while/stateless_random_flip_up_down:output:0*
T0*"
_output_shapes
:  �
=random_flip_40/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&random_flip_40_map_while_placeholder_1$random_flip_40_map_while_placeholderHrandom_flip_40/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���`
random_flip_40/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_40/map/while/addAddV2$random_flip_40_map_while_placeholder'random_flip_40/map/while/add/y:output:0*
T0*
_output_shapes
: b
 random_flip_40/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_40/map/while/add_1AddV2>random_flip_40_map_while_random_flip_40_map_while_loop_counter)random_flip_40/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
!random_flip_40/map/while/IdentityIdentity"random_flip_40/map/while/add_1:z:0^random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
#random_flip_40/map/while/Identity_1Identity9random_flip_40_map_while_random_flip_40_map_strided_slice^random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
#random_flip_40/map/while/Identity_2Identity random_flip_40/map/while/add:z:0^random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
#random_flip_40/map/while/Identity_3IdentityMrandom_flip_40/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_40/map/while/NoOp*
T0*
_output_shapes
: �
random_flip_40/map/while/NoOpNoOpB^random_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkipD^random_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "O
!random_flip_40_map_while_identity*random_flip_40/map/while/Identity:output:0"S
#random_flip_40_map_while_identity_1,random_flip_40/map/while/Identity_1:output:0"S
#random_flip_40_map_while_identity_2,random_flip_40/map/while/Identity_2:output:0"S
#random_flip_40_map_while_identity_3,random_flip_40/map/while/Identity_3:output:0"|
;random_flip_40_map_while_random_flip_40_map_strided_slice_1=random_flip_40_map_while_random_flip_40_map_strided_slice_1_0"�
Jrandom_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resourceLrandom_flip_40_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
wrandom_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_40_map_tensorarrayunstack_tensorlistfromtensoryrandom_flip_40_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_40_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
Arandom_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkipArandom_flip_40/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Crandom_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkipCrandom_flip_40/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 
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
�
�
9map_while_stateless_random_flip_left_right_false_13763764u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*"
_output_shapes
:  "s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

a
E__inference_Reconst_layer_call_and_return_conditional_losses_13764519

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������  \
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
v
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13764843

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
I__inference_precip_loss_layer_call_and_return_conditional_losses_13765077

inputs
inputs_1&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: 

identity_1

identity_2��AssignAddVariableOp�AssignAddVariableOp_1�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1}
$mean_squared_error/SquaredDifferenceSquaredDifferenceinputsinputs_1*
T0*'
_output_shapes
:���������t
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������k
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������r
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
-mean_squared_error/weighted_loss/num_elementsSize(mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���>g
mulMulmul/x:output:0*mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: 
&mean_squared_error_1/SquaredDifferenceSquaredDifferenceinputsinputs_1*
T0*'
_output_shapes
:���������v
+mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_squared_error_1/MeanMean*mean_squared_error_1/SquaredDifference:z:04mean_squared_error_1/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������m
(mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&mean_squared_error_1/weighted_loss/MulMul"mean_squared_error_1/Mean:output:01mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������t
*mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
&mean_squared_error_1/weighted_loss/SumSum*mean_squared_error_1/weighted_loss/Mul:z:03mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
/mean_squared_error_1/weighted_loss/num_elementsSize*mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
4mean_squared_error_1/weighted_loss/num_elements/CastCast8mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: i
'mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
(mean_squared_error_1/weighted_loss/rangeRange7mean_squared_error_1/weighted_loss/range/start:output:00mean_squared_error_1/weighted_loss/Rank:output:07mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/Sum_1Sum/mean_squared_error_1/weighted_loss/Sum:output:01mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
(mean_squared_error_1/weighted_loss/valueDivNoNan1mean_squared_error_1/weighted_loss/Sum_1:output:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: i
SumSum,mean_squared_error_1/weighted_loss/value:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: W

Identity_1Identityinputs^NoOp*
T0*'
_output_shapes
:���������G

Identity_2Identitymul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������: : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_126
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_1:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Ssequential_20_random_flip_40_map_while_stateless_random_flip_up_down_false_13766559�
�sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_identity_sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_20_random_flip_40_map_while_stateless_random_flip_up_down_identity�
Msequential_20/random_flip_40/map/while/stateless_random_flip_up_down/IdentityIdentity�sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_identity_sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "�
Msequential_20_random_flip_40_map_while_stateless_random_flip_up_down_identityVsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�	
u
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764061
random_flip_40_input
identity�
random_flip_40/PartitionedCallPartitionedCallrandom_flip_40_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13763668�
random_flip_41/PartitionedCallPartitionedCall'random_flip_40/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763674w
IdentityIdentity'random_flip_41/PartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :e a
/
_output_shapes
:���������  
.
_user_specified_namerandom_flip_40_input
�
�
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13763846

inputs
map_while_input_6:	
identity��	map/while?
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
valueB:�
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
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
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
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *#
bodyR
map_while_body_13763704*#
condR
map_while_cond_13763703*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*/
_output_shapes
:���������  R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������  : 2
	map/while	map/while:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�	
+__inference_model_35_layer_call_fn_13766109
inputs_0
inputs_1
inputs_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:	
	unknown_8:	
	unknown_9:@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:	�@

unknown_28:@

unknown_29:@

unknown_30:

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: 

unknown_36: 

unknown_37: 

unknown_38: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*6
Tin/
-2+*
Tout

2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:���������  : : : : *@
_read_only_resource_inputs"
 	
 !"*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_35_layer_call_and_return_conditional_losses_13765428o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������u

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:���������  `

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������  
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�
�	
+__inference_model_35_layer_call_fn_13765176
	input_158
	input_159
	input_160!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
	unknown_7:@
	unknown_8:@
	unknown_9:	@�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:
��

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:	�@

unknown_26:@

unknown_27:@

unknown_28:

unknown_29: 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: 

unknown_35: 

unknown_36: 
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_158	input_159	input_160unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*4
Tin-
+2)*
Tout

2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:���������  : : : : *@
_read_only_resource_inputs"
 	
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_model_35_layer_call_and_return_conditional_losses_13765090o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������u

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:���������  `

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_158:RN
'
_output_shapes
:���������
#
_user_specified_name	input_159:RN
'
_output_shapes
:���������
#
_user_specified_name	input_160
�9
�
J__inference_rotationloss_layer_call_and_return_conditional_losses_13767944
inputs_pred
inputs_true&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: (
assignaddvariableop_2_resource: (
assignaddvariableop_3_resource: 

identity_2

identity_3��AssignAddVariableOp�AssignAddVariableOp_1�AssignAddVariableOp_2�AssignAddVariableOp_3�div_no_nan/ReadVariableOp�div_no_nan/ReadVariableOp_1�div_no_nan_1/ReadVariableOp�div_no_nan_1/ReadVariableOp_1j
mean_absolute_error/subSubinputs_predinputs_true*
T0*'
_output_shapes
:���������m
mean_absolute_error/AbsAbsmean_absolute_error/sub:z:0*
T0*'
_output_shapes
:���������u
*mean_absolute_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
mean_absolute_error/MeanMeanmean_absolute_error/Abs:y:03mean_absolute_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������l
'mean_absolute_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%mean_absolute_error/weighted_loss/MulMul!mean_absolute_error/Mean:output:00mean_absolute_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������s
)mean_absolute_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
%mean_absolute_error/weighted_loss/SumSum)mean_absolute_error/weighted_loss/Mul:z:02mean_absolute_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
.mean_absolute_error/weighted_loss/num_elementsSize)mean_absolute_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
3mean_absolute_error/weighted_loss/num_elements/CastCast7mean_absolute_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&mean_absolute_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : o
-mean_absolute_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : o
-mean_absolute_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
'mean_absolute_error/weighted_loss/rangeRange6mean_absolute_error/weighted_loss/range/start:output:0/mean_absolute_error/weighted_loss/Rank:output:06mean_absolute_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
'mean_absolute_error/weighted_loss/Sum_1Sum.mean_absolute_error/weighted_loss/Sum:output:00mean_absolute_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
'mean_absolute_error/weighted_loss/valueDivNoNan0mean_absolute_error/weighted_loss/Sum_1:output:07mean_absolute_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: I
AbsAbsinputs_true*
T0*'
_output_shapes
:���������V
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
MeanMeanAbs:y:0Const:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
mulMulmul/x:output:0+mean_absolute_error/weighted_loss/value:z:0*
T0*
_output_shapes
: K
truedivRealDivmul:z:0Mean:output:0*
T0*
_output_shapes
: q
	truediv_1RealDiv+mean_absolute_error/weighted_loss/value:z:0Mean:output:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: J
SumSumtruediv_1:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0F
SizeConst*
_output_shapes
: *
dtype0*
value	B :K
CastCastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceCast:y:0^AssignAddVariableOp*
_output_shapes
 *
dtype0�
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp^AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: N
Sum_1SumMean:output:0range_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_2AssignAddVariableOpassignaddvariableop_2_resourceSum_1:output:0*
_output_shapes
 *
dtype0H
Size_1Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_1CastSize_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
AssignAddVariableOp_3AssignAddVariableOpassignaddvariableop_3_resource
Cast_1:y:0^AssignAddVariableOp_2*
_output_shapes
 *
dtype0�
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_2_resource^AssignAddVariableOp_2^AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_3_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_1Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: k

Identity_2Identity+mean_absolute_error/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: K

Identity_3Identitytruediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_2^AssignAddVariableOp_3^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_12.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_326
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_1:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/pred:TP
'
_output_shapes
:���������
%
_user_specified_nameinputs/true
�
�
Rsequential_20_random_flip_40_map_while_stateless_random_flip_up_down_true_13766558�
�sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_reversev2_sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_control_dependencyQ
Msequential_20_random_flip_40_map_while_stateless_random_flip_up_down_identity�
Ssequential_20/random_flip_40/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
Nsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_reversev2_sequential_20_random_flip_40_map_while_stateless_random_flip_up_down_control_dependency\sequential_20/random_flip_40/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
Msequential_20/random_flip_40/map/while/stateless_random_flip_up_down/IdentityIdentityWsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "�
Msequential_20_random_flip_40_map_while_stateless_random_flip_up_down_identityVsequential_20/random_flip_40/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�
�
6map_while_stateless_random_flip_up_down_false_13763984o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�,
�
D__inference_precip_layer_call_and_return_conditional_losses_13767582

inputs;
(dense_248_matmul_readvariableop_resource:	�8
)dense_248_biasadd_readvariableop_resource:	�<
(dense_249_matmul_readvariableop_resource:
��8
)dense_249_biasadd_readvariableop_resource:	�<
(dense_250_matmul_readvariableop_resource:
��8
)dense_250_biasadd_readvariableop_resource:	�;
(dense_251_matmul_readvariableop_resource:	�@7
)dense_251_biasadd_readvariableop_resource:@7
%precip_matmul_readvariableop_resource:@4
&precip_biasadd_readvariableop_resource:
identity�� dense_248/BiasAdd/ReadVariableOp�dense_248/MatMul/ReadVariableOp� dense_249/BiasAdd/ReadVariableOp�dense_249/MatMul/ReadVariableOp� dense_250/BiasAdd/ReadVariableOp�dense_250/MatMul/ReadVariableOp� dense_251/BiasAdd/ReadVariableOp�dense_251/MatMul/ReadVariableOp�precip/BiasAdd/ReadVariableOp�precip/MatMul/ReadVariableOp�
dense_248/MatMul/ReadVariableOpReadVariableOp(dense_248_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0~
dense_248/MatMulMatMulinputs'dense_248/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_248/BiasAdd/ReadVariableOpReadVariableOp)dense_248_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_248/BiasAddBiasAdddense_248/MatMul:product:0(dense_248/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_248/ReluReludense_248/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_249/MatMul/ReadVariableOpReadVariableOp(dense_249_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_249/MatMulMatMuldense_248/Relu:activations:0'dense_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_249/BiasAdd/ReadVariableOpReadVariableOp)dense_249_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_249/BiasAddBiasAdddense_249/MatMul:product:0(dense_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_249/ReluReludense_249/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_250/MatMul/ReadVariableOpReadVariableOp(dense_250_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_250/MatMulMatMuldense_249/Relu:activations:0'dense_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 dense_250/BiasAdd/ReadVariableOpReadVariableOp)dense_250_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_250/BiasAddBiasAdddense_250/MatMul:product:0(dense_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
dense_250/ReluReludense_250/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_251/MatMul/ReadVariableOpReadVariableOp(dense_251_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_251/MatMulMatMuldense_250/Relu:activations:0'dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
 dense_251/BiasAdd/ReadVariableOpReadVariableOp)dense_251_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_251/BiasAddBiasAdddense_251/MatMul:product:0(dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
dense_251/ReluReludense_251/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
precip/MatMul/ReadVariableOpReadVariableOp%precip_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
precip/MatMulMatMuldense_251/Relu:activations:0$precip/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
precip/BiasAdd/ReadVariableOpReadVariableOp&precip_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
precip/BiasAddBiasAddprecip/MatMul:product:0%precip/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
IdentityIdentityprecip/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_248/BiasAdd/ReadVariableOp ^dense_248/MatMul/ReadVariableOp!^dense_249/BiasAdd/ReadVariableOp ^dense_249/MatMul/ReadVariableOp!^dense_250/BiasAdd/ReadVariableOp ^dense_250/MatMul/ReadVariableOp!^dense_251/BiasAdd/ReadVariableOp ^dense_251/MatMul/ReadVariableOp^precip/BiasAdd/ReadVariableOp^precip/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2D
 dense_248/BiasAdd/ReadVariableOp dense_248/BiasAdd/ReadVariableOp2B
dense_248/MatMul/ReadVariableOpdense_248/MatMul/ReadVariableOp2D
 dense_249/BiasAdd/ReadVariableOp dense_249/BiasAdd/ReadVariableOp2B
dense_249/MatMul/ReadVariableOpdense_249/MatMul/ReadVariableOp2D
 dense_250/BiasAdd/ReadVariableOp dense_250/BiasAdd/ReadVariableOp2B
dense_250/MatMul/ReadVariableOpdense_250/MatMul/ReadVariableOp2D
 dense_251/BiasAdd/ReadVariableOp dense_251/BiasAdd/ReadVariableOp2B
dense_251/MatMul/ReadVariableOpdense_251/MatMul/ReadVariableOp2>
precip/BiasAdd/ReadVariableOpprecip/BiasAdd/ReadVariableOp2<
precip/MatMul/ReadVariableOpprecip/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
x
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13767126
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
(__inference_xmean_layer_call_fn_13768035

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_xmean_layer_call_and_return_conditional_losses_13763444o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�'
F__inference_model_35_layer_call_and_return_conditional_losses_13767001
inputs_0
inputs_1
inputs_2K
1model_34_conv2d_60_conv2d_readvariableop_resource:@
2model_34_conv2d_60_biasadd_readvariableop_resource:K
1model_34_conv2d_61_conv2d_readvariableop_resource:@
2model_34_conv2d_61_biasadd_readvariableop_resource:K
1model_34_conv2d_62_conv2d_readvariableop_resource:@
2model_34_conv2d_62_biasadd_readvariableop_resource:@
-model_34_xmean_matmul_readvariableop_resource:	�<
.model_34_xmean_biasadd_readvariableop_resource:<
.sequential_20_random_flip_40_map_while_input_6:	<
.sequential_20_random_flip_41_map_while_input_6:	B
0reconst_dense_240_matmul_readvariableop_resource:@?
1reconst_dense_240_biasadd_readvariableop_resource:@C
0reconst_dense_241_matmul_readvariableop_resource:	@�@
1reconst_dense_241_biasadd_readvariableop_resource:	�D
0reconst_dense_242_matmul_readvariableop_resource:
��@
1reconst_dense_242_biasadd_readvariableop_resource:	�D
0reconst_dense_243_matmul_readvariableop_resource:
��@
1reconst_dense_243_biasadd_readvariableop_resource:	�D
0reconst_dense_244_matmul_readvariableop_resource:
��@
1reconst_dense_244_biasadd_readvariableop_resource:	�D
0reconst_dense_245_matmul_readvariableop_resource:
��@
1reconst_dense_245_biasadd_readvariableop_resource:	�B
/precip_dense_248_matmul_readvariableop_resource:	�?
0precip_dense_248_biasadd_readvariableop_resource:	�C
/precip_dense_249_matmul_readvariableop_resource:
��?
0precip_dense_249_biasadd_readvariableop_resource:	�C
/precip_dense_250_matmul_readvariableop_resource:
��?
0precip_dense_250_biasadd_readvariableop_resource:	�B
/precip_dense_251_matmul_readvariableop_resource:	�@>
0precip_dense_251_biasadd_readvariableop_resource:@>
,precip_precip_matmul_readvariableop_resource:@;
-precip_precip_biasadd_readvariableop_resource:3
)rotationloss_assignaddvariableop_resource: 5
+rotationloss_assignaddvariableop_1_resource: 5
+rotationloss_assignaddvariableop_2_resource: 5
+rotationloss_assignaddvariableop_3_resource: .
$hr_loss_assignaddvariableop_resource: 0
&hr_loss_assignaddvariableop_1_resource: 2
(precip_loss_assignaddvariableop_resource: 4
*precip_loss_assignaddvariableop_1_resource: 
identity

identity_1

identity_2

identity_3

identity_4

identity_5��hr_loss/AssignAddVariableOp�hr_loss/AssignAddVariableOp_1�!hr_loss/div_no_nan/ReadVariableOp�#hr_loss/div_no_nan/ReadVariableOp_1�)model_34/conv2d_60/BiasAdd/ReadVariableOp�+model_34/conv2d_60/BiasAdd_1/ReadVariableOp�(model_34/conv2d_60/Conv2D/ReadVariableOp�*model_34/conv2d_60/Conv2D_1/ReadVariableOp�)model_34/conv2d_61/BiasAdd/ReadVariableOp�+model_34/conv2d_61/BiasAdd_1/ReadVariableOp�(model_34/conv2d_61/Conv2D/ReadVariableOp�*model_34/conv2d_61/Conv2D_1/ReadVariableOp�)model_34/conv2d_62/BiasAdd/ReadVariableOp�+model_34/conv2d_62/BiasAdd_1/ReadVariableOp�(model_34/conv2d_62/Conv2D/ReadVariableOp�*model_34/conv2d_62/Conv2D_1/ReadVariableOp�%model_34/xmean/BiasAdd/ReadVariableOp�'model_34/xmean/BiasAdd_1/ReadVariableOp�$model_34/xmean/MatMul/ReadVariableOp�&model_34/xmean/MatMul_1/ReadVariableOp�'precip/dense_248/BiasAdd/ReadVariableOp�&precip/dense_248/MatMul/ReadVariableOp�'precip/dense_249/BiasAdd/ReadVariableOp�&precip/dense_249/MatMul/ReadVariableOp�'precip/dense_250/BiasAdd/ReadVariableOp�&precip/dense_250/MatMul/ReadVariableOp�'precip/dense_251/BiasAdd/ReadVariableOp�&precip/dense_251/MatMul/ReadVariableOp�$precip/precip/BiasAdd/ReadVariableOp�#precip/precip/MatMul/ReadVariableOp�precip_loss/AssignAddVariableOp�!precip_loss/AssignAddVariableOp_1�%precip_loss/div_no_nan/ReadVariableOp�'precip_loss/div_no_nan/ReadVariableOp_1�(reconst/dense_240/BiasAdd/ReadVariableOp�'reconst/dense_240/MatMul/ReadVariableOp�(reconst/dense_241/BiasAdd/ReadVariableOp�'reconst/dense_241/MatMul/ReadVariableOp�(reconst/dense_242/BiasAdd/ReadVariableOp�'reconst/dense_242/MatMul/ReadVariableOp�(reconst/dense_243/BiasAdd/ReadVariableOp�'reconst/dense_243/MatMul/ReadVariableOp�(reconst/dense_244/BiasAdd/ReadVariableOp�'reconst/dense_244/MatMul/ReadVariableOp�(reconst/dense_245/BiasAdd/ReadVariableOp�'reconst/dense_245/MatMul/ReadVariableOp� rotationloss/AssignAddVariableOp�"rotationloss/AssignAddVariableOp_1�"rotationloss/AssignAddVariableOp_2�"rotationloss/AssignAddVariableOp_3�&rotationloss/div_no_nan/ReadVariableOp�(rotationloss/div_no_nan/ReadVariableOp_1�(rotationloss/div_no_nan_1/ReadVariableOp�*rotationloss/div_no_nan_1/ReadVariableOp_1�&sequential_20/random_flip_40/map/while�&sequential_20/random_flip_41/map/while�
'model_34/zero_padding2d_20/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
model_34/zero_padding2d_20/PadPadinputs_00model_34/zero_padding2d_20/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
(model_34/conv2d_60/Conv2D/ReadVariableOpReadVariableOp1model_34_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_60/Conv2DConv2D'model_34/zero_padding2d_20/Pad:output:00model_34/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)model_34/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp2model_34_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_60/BiasAddBiasAdd"model_34/conv2d_60/Conv2D:output:01model_34/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~
model_34/conv2d_60/ReluRelu#model_34/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:����������
(model_34/conv2d_61/Conv2D/ReadVariableOpReadVariableOp1model_34_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_61/Conv2DConv2D%model_34/conv2d_60/Relu:activations:00model_34/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
)model_34/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp2model_34_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_61/BiasAddBiasAdd"model_34/conv2d_61/Conv2D:output:01model_34/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	~
model_34/conv2d_61/ReluRelu#model_34/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
(model_34/conv2d_62/Conv2D/ReadVariableOpReadVariableOp1model_34_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_62/Conv2DConv2D%model_34/conv2d_61/Relu:activations:00model_34/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)model_34/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp2model_34_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_62/BiasAddBiasAdd"model_34/conv2d_62/Conv2D:output:01model_34/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~
model_34/conv2d_62/ReluRelu#model_34/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������j
model_34/flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
model_34/flatten_20/ReshapeReshape%model_34/conv2d_62/Relu:activations:0"model_34/flatten_20/Const:output:0*
T0*(
_output_shapes
:�����������
$model_34/xmean/MatMul/ReadVariableOpReadVariableOp-model_34_xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_34/xmean/MatMulMatMul$model_34/flatten_20/Reshape:output:0,model_34/xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%model_34/xmean/BiasAdd/ReadVariableOpReadVariableOp.model_34_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/xmean/BiasAddBiasAddmodel_34/xmean/MatMul:product:0-model_34/xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������^
&sequential_20/random_flip_40/map/ShapeShapeinputs_0*
T0*
_output_shapes
:~
4sequential_20/random_flip_40/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6sequential_20/random_flip_40/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_20/random_flip_40/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_20/random_flip_40/map/strided_sliceStridedSlice/sequential_20/random_flip_40/map/Shape:output:0=sequential_20/random_flip_40/map/strided_slice/stack:output:0?sequential_20/random_flip_40/map/strided_slice/stack_1:output:0?sequential_20/random_flip_40/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<sequential_20/random_flip_40/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
.sequential_20/random_flip_40/map/TensorArrayV2TensorListReserveEsequential_20/random_flip_40/map/TensorArrayV2/element_shape:output:07sequential_20/random_flip_40/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Vsequential_20/random_flip_40/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
Hsequential_20/random_flip_40/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputs_0_sequential_20/random_flip_40/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
&sequential_20/random_flip_40/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
>sequential_20/random_flip_40/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
0sequential_20/random_flip_40/map/TensorArrayV2_1TensorListReserveGsequential_20/random_flip_40/map/TensorArrayV2_1/element_shape:output:07sequential_20/random_flip_40/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
3sequential_20/random_flip_40/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
&sequential_20/random_flip_40/map/whileWhile<sequential_20/random_flip_40/map/while/loop_counter:output:07sequential_20/random_flip_40/map/strided_slice:output:0/sequential_20/random_flip_40/map/Const:output:09sequential_20/random_flip_40/map/TensorArrayV2_1:handle:07sequential_20/random_flip_40/map/strided_slice:output:0Xsequential_20/random_flip_40/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0.sequential_20_random_flip_40_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *@
body8R6
4sequential_20_random_flip_40_map_while_body_13766450*@
cond8R6
4sequential_20_random_flip_40_map_while_cond_13766449*!
output_shapes
: : : : : : : �
Qsequential_20/random_flip_40/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
Csequential_20/random_flip_40/map/TensorArrayV2Stack/TensorListStackTensorListStack/sequential_20/random_flip_40/map/while:output:3Zsequential_20/random_flip_40/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0�
&sequential_20/random_flip_41/map/ShapeShapeLsequential_20/random_flip_40/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:~
4sequential_20/random_flip_41/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6sequential_20/random_flip_41/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_20/random_flip_41/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_20/random_flip_41/map/strided_sliceStridedSlice/sequential_20/random_flip_41/map/Shape:output:0=sequential_20/random_flip_41/map/strided_slice/stack:output:0?sequential_20/random_flip_41/map/strided_slice/stack_1:output:0?sequential_20/random_flip_41/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<sequential_20/random_flip_41/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
.sequential_20/random_flip_41/map/TensorArrayV2TensorListReserveEsequential_20/random_flip_41/map/TensorArrayV2/element_shape:output:07sequential_20/random_flip_41/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Vsequential_20/random_flip_41/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
Hsequential_20/random_flip_41/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorLsequential_20/random_flip_40/map/TensorArrayV2Stack/TensorListStack:tensor:0_sequential_20/random_flip_41/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
&sequential_20/random_flip_41/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
>sequential_20/random_flip_41/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
0sequential_20/random_flip_41/map/TensorArrayV2_1TensorListReserveGsequential_20/random_flip_41/map/TensorArrayV2_1/element_shape:output:07sequential_20/random_flip_41/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
3sequential_20/random_flip_41/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
&sequential_20/random_flip_41/map/whileWhile<sequential_20/random_flip_41/map/while/loop_counter:output:07sequential_20/random_flip_41/map/strided_slice:output:0/sequential_20/random_flip_41/map/Const:output:09sequential_20/random_flip_41/map/TensorArrayV2_1:handle:07sequential_20/random_flip_41/map/strided_slice:output:0Xsequential_20/random_flip_41/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0.sequential_20_random_flip_41_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *@
body8R6
4sequential_20_random_flip_41_map_while_body_13766604*@
cond8R6
4sequential_20_random_flip_41_map_while_cond_13766603*!
output_shapes
: : : : : : : �
Qsequential_20/random_flip_41/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
Csequential_20/random_flip_41/map/TensorArrayV2Stack/TensorListStackTensorListStack/sequential_20/random_flip_41/map/while:output:3Zsequential_20/random_flip_41/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0\
concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_18/concatConcatV2model_34/xmean/BiasAdd:output:0inputs_1#concatenate_18/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
)model_34/zero_padding2d_20/Pad_1/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
 model_34/zero_padding2d_20/Pad_1PadLsequential_20/random_flip_41/map/TensorArrayV2Stack/TensorListStack:tensor:02model_34/zero_padding2d_20/Pad_1/paddings:output:0*
T0*/
_output_shapes
:���������" �
*model_34/conv2d_60/Conv2D_1/ReadVariableOpReadVariableOp1model_34_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_60/Conv2D_1Conv2D)model_34/zero_padding2d_20/Pad_1:output:02model_34/conv2d_60/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
+model_34/conv2d_60/BiasAdd_1/ReadVariableOpReadVariableOp2model_34_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_60/BiasAdd_1BiasAdd$model_34/conv2d_60/Conv2D_1:output:03model_34/conv2d_60/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
model_34/conv2d_60/Relu_1Relu%model_34/conv2d_60/BiasAdd_1:output:0*
T0*/
_output_shapes
:����������
*model_34/conv2d_61/Conv2D_1/ReadVariableOpReadVariableOp1model_34_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_61/Conv2D_1Conv2D'model_34/conv2d_60/Relu_1:activations:02model_34/conv2d_61/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
+model_34/conv2d_61/BiasAdd_1/ReadVariableOpReadVariableOp2model_34_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_61/BiasAdd_1BiasAdd$model_34/conv2d_61/Conv2D_1:output:03model_34/conv2d_61/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	�
model_34/conv2d_61/Relu_1Relu%model_34/conv2d_61/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������	�
*model_34/conv2d_62/Conv2D_1/ReadVariableOpReadVariableOp1model_34_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_34/conv2d_62/Conv2D_1Conv2D'model_34/conv2d_61/Relu_1:activations:02model_34/conv2d_62/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
+model_34/conv2d_62/BiasAdd_1/ReadVariableOpReadVariableOp2model_34_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/conv2d_62/BiasAdd_1BiasAdd$model_34/conv2d_62/Conv2D_1:output:03model_34/conv2d_62/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
model_34/conv2d_62/Relu_1Relu%model_34/conv2d_62/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������l
model_34/flatten_20/Const_1Const*
_output_shapes
:*
dtype0*
valueB"�����   �
model_34/flatten_20/Reshape_1Reshape'model_34/conv2d_62/Relu_1:activations:0$model_34/flatten_20/Const_1:output:0*
T0*(
_output_shapes
:�����������
&model_34/xmean/MatMul_1/ReadVariableOpReadVariableOp-model_34_xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_34/xmean/MatMul_1MatMul&model_34/flatten_20/Reshape_1:output:0.model_34/xmean/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_34/xmean/BiasAdd_1/ReadVariableOpReadVariableOp.model_34_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/xmean/BiasAdd_1BiasAdd!model_34/xmean/MatMul_1:product:0/model_34/xmean/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'reconst/dense_240/MatMul/ReadVariableOpReadVariableOp0reconst_dense_240_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
reconst/dense_240/MatMulMatMulmodel_34/xmean/BiasAdd:output:0/reconst/dense_240/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
(reconst/dense_240/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_240_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
reconst/dense_240/BiasAddBiasAdd"reconst/dense_240/MatMul:product:00reconst/dense_240/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@t
reconst/dense_240/ReluRelu"reconst/dense_240/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
'reconst/dense_241/MatMul/ReadVariableOpReadVariableOp0reconst_dense_241_matmul_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
reconst/dense_241/MatMulMatMul$reconst/dense_240/Relu:activations:0/reconst/dense_241/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_241/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_241_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_241/BiasAddBiasAdd"reconst/dense_241/MatMul:product:00reconst/dense_241/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_241/ReluRelu"reconst/dense_241/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_242/MatMul/ReadVariableOpReadVariableOp0reconst_dense_242_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_242/MatMulMatMul$reconst/dense_241/Relu:activations:0/reconst/dense_242/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_242/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_242_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_242/BiasAddBiasAdd"reconst/dense_242/MatMul:product:00reconst/dense_242/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_242/ReluRelu"reconst/dense_242/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_243/MatMul/ReadVariableOpReadVariableOp0reconst_dense_243_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_243/MatMulMatMul$reconst/dense_242/Relu:activations:0/reconst/dense_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_243/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_243_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_243/BiasAddBiasAdd"reconst/dense_243/MatMul:product:00reconst/dense_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_243/ReluRelu"reconst/dense_243/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_244/MatMul/ReadVariableOpReadVariableOp0reconst_dense_244_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_244/MatMulMatMul$reconst/dense_243/Relu:activations:0/reconst/dense_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_244/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_244_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_244/BiasAddBiasAdd"reconst/dense_244/MatMul:product:00reconst/dense_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
reconst/dense_244/ReluRelu"reconst/dense_244/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'reconst/dense_245/MatMul/ReadVariableOpReadVariableOp0reconst_dense_245_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
reconst/dense_245/MatMulMatMul$reconst/dense_244/Relu:activations:0/reconst/dense_245/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(reconst/dense_245/BiasAdd/ReadVariableOpReadVariableOp1reconst_dense_245_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
reconst/dense_245/BiasAddBiasAdd"reconst/dense_245/MatMul:product:00reconst/dense_245/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
reconst/Reconst/ShapeShape"reconst/dense_245/BiasAdd:output:0*
T0*
_output_shapes
:m
#reconst/Reconst/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%reconst/Reconst/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%reconst/Reconst/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reconst/Reconst/strided_sliceStridedSlicereconst/Reconst/Shape:output:0,reconst/Reconst/strided_slice/stack:output:0.reconst/Reconst/strided_slice/stack_1:output:0.reconst/Reconst/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
reconst/Reconst/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : a
reconst/Reconst/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B : �
reconst/Reconst/Reshape/shapePack&reconst/Reconst/strided_slice:output:0(reconst/Reconst/Reshape/shape/1:output:0(reconst/Reconst/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reconst/Reconst/ReshapeReshape"reconst/dense_245/BiasAdd:output:0&reconst/Reconst/Reshape/shape:output:0*
T0*+
_output_shapes
:���������  �
&precip/dense_248/MatMul/ReadVariableOpReadVariableOp/precip_dense_248_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
precip/dense_248/MatMulMatMulconcatenate_18/concat:output:0.precip/dense_248/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'precip/dense_248/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_248_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
precip/dense_248/BiasAddBiasAdd!precip/dense_248/MatMul:product:0/precip/dense_248/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
precip/dense_248/ReluRelu!precip/dense_248/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&precip/dense_249/MatMul/ReadVariableOpReadVariableOp/precip_dense_249_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
precip/dense_249/MatMulMatMul#precip/dense_248/Relu:activations:0.precip/dense_249/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'precip/dense_249/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_249_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
precip/dense_249/BiasAddBiasAdd!precip/dense_249/MatMul:product:0/precip/dense_249/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
precip/dense_249/ReluRelu!precip/dense_249/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&precip/dense_250/MatMul/ReadVariableOpReadVariableOp/precip_dense_250_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
precip/dense_250/MatMulMatMul#precip/dense_249/Relu:activations:0.precip/dense_250/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'precip/dense_250/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_250_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
precip/dense_250/BiasAddBiasAdd!precip/dense_250/MatMul:product:0/precip/dense_250/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
precip/dense_250/ReluRelu!precip/dense_250/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&precip/dense_251/MatMul/ReadVariableOpReadVariableOp/precip_dense_251_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
precip/dense_251/MatMulMatMul#precip/dense_250/Relu:activations:0.precip/dense_251/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'precip/dense_251/BiasAdd/ReadVariableOpReadVariableOp0precip_dense_251_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
precip/dense_251/BiasAddBiasAdd!precip/dense_251/MatMul:product:0/precip/dense_251/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
precip/dense_251/ReluRelu!precip/dense_251/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#precip/precip/MatMul/ReadVariableOpReadVariableOp,precip_precip_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
precip/precip/MatMulMatMul#precip/dense_251/Relu:activations:0+precip/precip/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$precip/precip/BiasAdd/ReadVariableOpReadVariableOp-precip_precip_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
precip/precip/BiasAddBiasAddprecip/precip/MatMul:product:0,precip/precip/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$rotationloss/mean_absolute_error/subSub!model_34/xmean/BiasAdd_1:output:0model_34/xmean/BiasAdd:output:0*
T0*'
_output_shapes
:����������
$rotationloss/mean_absolute_error/AbsAbs(rotationloss/mean_absolute_error/sub:z:0*
T0*'
_output_shapes
:����������
7rotationloss/mean_absolute_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
%rotationloss/mean_absolute_error/MeanMean(rotationloss/mean_absolute_error/Abs:y:0@rotationloss/mean_absolute_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������y
4rotationloss/mean_absolute_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2rotationloss/mean_absolute_error/weighted_loss/MulMul.rotationloss/mean_absolute_error/Mean:output:0=rotationloss/mean_absolute_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
6rotationloss/mean_absolute_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2rotationloss/mean_absolute_error/weighted_loss/SumSum6rotationloss/mean_absolute_error/weighted_loss/Mul:z:0?rotationloss/mean_absolute_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
;rotationloss/mean_absolute_error/weighted_loss/num_elementsSize6rotationloss/mean_absolute_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
@rotationloss/mean_absolute_error/weighted_loss/num_elements/CastCastDrotationloss/mean_absolute_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: u
3rotationloss/mean_absolute_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : |
:rotationloss/mean_absolute_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : |
:rotationloss/mean_absolute_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
4rotationloss/mean_absolute_error/weighted_loss/rangeRangeCrotationloss/mean_absolute_error/weighted_loss/range/start:output:0<rotationloss/mean_absolute_error/weighted_loss/Rank:output:0Crotationloss/mean_absolute_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
4rotationloss/mean_absolute_error/weighted_loss/Sum_1Sum;rotationloss/mean_absolute_error/weighted_loss/Sum:output:0=rotationloss/mean_absolute_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
4rotationloss/mean_absolute_error/weighted_loss/valueDivNoNan=rotationloss/mean_absolute_error/weighted_loss/Sum_1:output:0Drotationloss/mean_absolute_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: j
rotationloss/AbsAbsmodel_34/xmean/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
rotationloss/ConstConst*
_output_shapes
:*
dtype0*
valueB"       m
rotationloss/MeanMeanrotationloss/Abs:y:0rotationloss/Const:output:0*
T0*
_output_shapes
: W
rotationloss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
rotationloss/mulMulrotationloss/mul/x:output:08rotationloss/mean_absolute_error/weighted_loss/value:z:0*
T0*
_output_shapes
: r
rotationloss/truedivRealDivrotationloss/mul:z:0rotationloss/Mean:output:0*
T0*
_output_shapes
: �
rotationloss/truediv_1RealDiv8rotationloss/mean_absolute_error/weighted_loss/value:z:0rotationloss/Mean:output:0*
T0*
_output_shapes
: S
rotationloss/RankConst*
_output_shapes
: *
dtype0*
value	B : Z
rotationloss/range/startConst*
_output_shapes
: *
dtype0*
value	B : Z
rotationloss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
rotationloss/rangeRange!rotationloss/range/start:output:0rotationloss/Rank:output:0!rotationloss/range/delta:output:0*
_output_shapes
: q
rotationloss/SumSumrotationloss/truediv_1:z:0rotationloss/range:output:0*
T0*
_output_shapes
: �
 rotationloss/AssignAddVariableOpAssignAddVariableOp)rotationloss_assignaddvariableop_resourcerotationloss/Sum:output:0*
_output_shapes
 *
dtype0S
rotationloss/SizeConst*
_output_shapes
: *
dtype0*
value	B :e
rotationloss/CastCastrotationloss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
"rotationloss/AssignAddVariableOp_1AssignAddVariableOp+rotationloss_assignaddvariableop_1_resourcerotationloss/Cast:y:0!^rotationloss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
&rotationloss/div_no_nan/ReadVariableOpReadVariableOp)rotationloss_assignaddvariableop_resource!^rotationloss/AssignAddVariableOp#^rotationloss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
(rotationloss/div_no_nan/ReadVariableOp_1ReadVariableOp+rotationloss_assignaddvariableop_1_resource#^rotationloss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
rotationloss/div_no_nanDivNoNan.rotationloss/div_no_nan/ReadVariableOp:value:00rotationloss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: _
rotationloss/IdentityIdentityrotationloss/div_no_nan:z:0*
T0*
_output_shapes
: U
rotationloss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : \
rotationloss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : \
rotationloss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
rotationloss/range_1Range#rotationloss/range_1/start:output:0rotationloss/Rank_1:output:0#rotationloss/range_1/delta:output:0*
_output_shapes
: u
rotationloss/Sum_1Sumrotationloss/Mean:output:0rotationloss/range_1:output:0*
T0*
_output_shapes
: �
"rotationloss/AssignAddVariableOp_2AssignAddVariableOp+rotationloss_assignaddvariableop_2_resourcerotationloss/Sum_1:output:0*
_output_shapes
 *
dtype0U
rotationloss/Size_1Const*
_output_shapes
: *
dtype0*
value	B :i
rotationloss/Cast_1Castrotationloss/Size_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
"rotationloss/AssignAddVariableOp_3AssignAddVariableOp+rotationloss_assignaddvariableop_3_resourcerotationloss/Cast_1:y:0#^rotationloss/AssignAddVariableOp_2*
_output_shapes
 *
dtype0�
(rotationloss/div_no_nan_1/ReadVariableOpReadVariableOp+rotationloss_assignaddvariableop_2_resource#^rotationloss/AssignAddVariableOp_2#^rotationloss/AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
*rotationloss/div_no_nan_1/ReadVariableOp_1ReadVariableOp+rotationloss_assignaddvariableop_3_resource#^rotationloss/AssignAddVariableOp_3*
_output_shapes
: *
dtype0�
rotationloss/div_no_nan_1DivNoNan0rotationloss/div_no_nan_1/ReadVariableOp:value:02rotationloss/div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: c
rotationloss/Identity_1Identityrotationloss/div_no_nan_1:z:0*
T0*
_output_shapes
: �
?hr_loss/mean_squared_error/remove_squeezable_dimensions/SqueezeSqueezeinputs_0*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
,hr_loss/mean_squared_error/SquaredDifferenceSquaredDifference reconst/Reconst/Reshape:output:0Hhr_loss/mean_squared_error/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  |
1hr_loss/mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
hr_loss/mean_squared_error/MeanMean0hr_loss/mean_squared_error/SquaredDifference:z:0:hr_loss/mean_squared_error/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� s
.hr_loss/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,hr_loss/mean_squared_error/weighted_loss/MulMul(hr_loss/mean_squared_error/Mean:output:07hr_loss/mean_squared_error/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� �
0hr_loss/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
,hr_loss/mean_squared_error/weighted_loss/SumSum0hr_loss/mean_squared_error/weighted_loss/Mul:z:09hr_loss/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
5hr_loss/mean_squared_error/weighted_loss/num_elementsSize0hr_loss/mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
:hr_loss/mean_squared_error/weighted_loss/num_elements/CastCast>hr_loss/mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: o
-hr_loss/mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : v
4hr_loss/mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : v
4hr_loss/mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
.hr_loss/mean_squared_error/weighted_loss/rangeRange=hr_loss/mean_squared_error/weighted_loss/range/start:output:06hr_loss/mean_squared_error/weighted_loss/Rank:output:0=hr_loss/mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
.hr_loss/mean_squared_error/weighted_loss/Sum_1Sum5hr_loss/mean_squared_error/weighted_loss/Sum:output:07hr_loss/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
.hr_loss/mean_squared_error/weighted_loss/valueDivNoNan7hr_loss/mean_squared_error/weighted_loss/Sum_1:output:0>hr_loss/mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: R
hr_loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
hr_loss/mulMulhr_loss/mul/x:output:02hr_loss/mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
Ahr_loss/mean_squared_error_1/remove_squeezable_dimensions/SqueezeSqueezeinputs_0*
T0*+
_output_shapes
:���������  *
squeeze_dims

����������
.hr_loss/mean_squared_error_1/SquaredDifferenceSquaredDifference reconst/Reconst/Reshape:output:0Jhr_loss/mean_squared_error_1/remove_squeezable_dimensions/Squeeze:output:0*
T0*+
_output_shapes
:���������  ~
3hr_loss/mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
!hr_loss/mean_squared_error_1/MeanMean2hr_loss/mean_squared_error_1/SquaredDifference:z:0<hr_loss/mean_squared_error_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:��������� u
0hr_loss/mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.hr_loss/mean_squared_error_1/weighted_loss/MulMul*hr_loss/mean_squared_error_1/Mean:output:09hr_loss/mean_squared_error_1/weighted_loss/Const:output:0*
T0*'
_output_shapes
:��������� �
2hr_loss/mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
.hr_loss/mean_squared_error_1/weighted_loss/SumSum2hr_loss/mean_squared_error_1/weighted_loss/Mul:z:0;hr_loss/mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
7hr_loss/mean_squared_error_1/weighted_loss/num_elementsSize2hr_loss/mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
<hr_loss/mean_squared_error_1/weighted_loss/num_elements/CastCast@hr_loss/mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: q
/hr_loss/mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : x
6hr_loss/mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : x
6hr_loss/mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
0hr_loss/mean_squared_error_1/weighted_loss/rangeRange?hr_loss/mean_squared_error_1/weighted_loss/range/start:output:08hr_loss/mean_squared_error_1/weighted_loss/Rank:output:0?hr_loss/mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
0hr_loss/mean_squared_error_1/weighted_loss/Sum_1Sum7hr_loss/mean_squared_error_1/weighted_loss/Sum:output:09hr_loss/mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
0hr_loss/mean_squared_error_1/weighted_loss/valueDivNoNan9hr_loss/mean_squared_error_1/weighted_loss/Sum_1:output:0@hr_loss/mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: N
hr_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : U
hr_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
hr_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
hr_loss/rangeRangehr_loss/range/start:output:0hr_loss/Rank:output:0hr_loss/range/delta:output:0*
_output_shapes
: �
hr_loss/SumSum4hr_loss/mean_squared_error_1/weighted_loss/value:z:0hr_loss/range:output:0*
T0*
_output_shapes
: �
hr_loss/AssignAddVariableOpAssignAddVariableOp$hr_loss_assignaddvariableop_resourcehr_loss/Sum:output:0*
_output_shapes
 *
dtype0N
hr_loss/SizeConst*
_output_shapes
: *
dtype0*
value	B :[
hr_loss/CastCasthr_loss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
hr_loss/AssignAddVariableOp_1AssignAddVariableOp&hr_loss_assignaddvariableop_1_resourcehr_loss/Cast:y:0^hr_loss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
!hr_loss/div_no_nan/ReadVariableOpReadVariableOp$hr_loss_assignaddvariableop_resource^hr_loss/AssignAddVariableOp^hr_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
#hr_loss/div_no_nan/ReadVariableOp_1ReadVariableOp&hr_loss_assignaddvariableop_1_resource^hr_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
hr_loss/div_no_nanDivNoNan)hr_loss/div_no_nan/ReadVariableOp:value:0+hr_loss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: U
hr_loss/IdentityIdentityhr_loss/div_no_nan:z:0*
T0*
_output_shapes
: �
0precip_loss/mean_squared_error/SquaredDifferenceSquaredDifferenceprecip/precip/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:����������
5precip_loss/mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
#precip_loss/mean_squared_error/MeanMean4precip_loss/mean_squared_error/SquaredDifference:z:0>precip_loss/mean_squared_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������w
2precip_loss/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0precip_loss/mean_squared_error/weighted_loss/MulMul,precip_loss/mean_squared_error/Mean:output:0;precip_loss/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������~
4precip_loss/mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0precip_loss/mean_squared_error/weighted_loss/SumSum4precip_loss/mean_squared_error/weighted_loss/Mul:z:0=precip_loss/mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
9precip_loss/mean_squared_error/weighted_loss/num_elementsSize4precip_loss/mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
>precip_loss/mean_squared_error/weighted_loss/num_elements/CastCastBprecip_loss/mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: s
1precip_loss/mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : z
8precip_loss/mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : z
8precip_loss/mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
2precip_loss/mean_squared_error/weighted_loss/rangeRangeAprecip_loss/mean_squared_error/weighted_loss/range/start:output:0:precip_loss/mean_squared_error/weighted_loss/Rank:output:0Aprecip_loss/mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: �
2precip_loss/mean_squared_error/weighted_loss/Sum_1Sum9precip_loss/mean_squared_error/weighted_loss/Sum:output:0;precip_loss/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: �
2precip_loss/mean_squared_error/weighted_loss/valueDivNoNan;precip_loss/mean_squared_error/weighted_loss/Sum_1:output:0Bprecip_loss/mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: V
precip_loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
precip_loss/mulMulprecip_loss/mul/x:output:06precip_loss/mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: �
2precip_loss/mean_squared_error_1/SquaredDifferenceSquaredDifferenceprecip/precip/BiasAdd:output:0inputs_2*
T0*'
_output_shapes
:����������
7precip_loss/mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
%precip_loss/mean_squared_error_1/MeanMean6precip_loss/mean_squared_error_1/SquaredDifference:z:0@precip_loss/mean_squared_error_1/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:���������y
4precip_loss/mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2precip_loss/mean_squared_error_1/weighted_loss/MulMul.precip_loss/mean_squared_error_1/Mean:output:0=precip_loss/mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
6precip_loss/mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2precip_loss/mean_squared_error_1/weighted_loss/SumSum6precip_loss/mean_squared_error_1/weighted_loss/Mul:z:0?precip_loss/mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
;precip_loss/mean_squared_error_1/weighted_loss/num_elementsSize6precip_loss/mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
@precip_loss/mean_squared_error_1/weighted_loss/num_elements/CastCastDprecip_loss/mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: u
3precip_loss/mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : |
:precip_loss/mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : |
:precip_loss/mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
4precip_loss/mean_squared_error_1/weighted_loss/rangeRangeCprecip_loss/mean_squared_error_1/weighted_loss/range/start:output:0<precip_loss/mean_squared_error_1/weighted_loss/Rank:output:0Cprecip_loss/mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: �
4precip_loss/mean_squared_error_1/weighted_loss/Sum_1Sum;precip_loss/mean_squared_error_1/weighted_loss/Sum:output:0=precip_loss/mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: �
4precip_loss/mean_squared_error_1/weighted_loss/valueDivNoNan=precip_loss/mean_squared_error_1/weighted_loss/Sum_1:output:0Dprecip_loss/mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: R
precip_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : Y
precip_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : Y
precip_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
precip_loss/rangeRange precip_loss/range/start:output:0precip_loss/Rank:output:0 precip_loss/range/delta:output:0*
_output_shapes
: �
precip_loss/SumSum8precip_loss/mean_squared_error_1/weighted_loss/value:z:0precip_loss/range:output:0*
T0*
_output_shapes
: �
precip_loss/AssignAddVariableOpAssignAddVariableOp(precip_loss_assignaddvariableop_resourceprecip_loss/Sum:output:0*
_output_shapes
 *
dtype0R
precip_loss/SizeConst*
_output_shapes
: *
dtype0*
value	B :c
precip_loss/CastCastprecip_loss/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: �
!precip_loss/AssignAddVariableOp_1AssignAddVariableOp*precip_loss_assignaddvariableop_1_resourceprecip_loss/Cast:y:0 ^precip_loss/AssignAddVariableOp*
_output_shapes
 *
dtype0�
%precip_loss/div_no_nan/ReadVariableOpReadVariableOp(precip_loss_assignaddvariableop_resource ^precip_loss/AssignAddVariableOp"^precip_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
'precip_loss/div_no_nan/ReadVariableOp_1ReadVariableOp*precip_loss_assignaddvariableop_1_resource"^precip_loss/AssignAddVariableOp_1*
_output_shapes
: *
dtype0�
precip_loss/div_no_nanDivNoNan-precip_loss/div_no_nan/ReadVariableOp:value:0/precip_loss/div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: ]
precip_loss/IdentityIdentityprecip_loss/div_no_nan:z:0*
T0*
_output_shapes
: m
IdentityIdentityprecip/precip/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������u

Identity_1Identity reconst/Reconst/Reshape:output:0^NoOp*
T0*+
_output_shapes
:���������  x

Identity_2Identity8rotationloss/mean_absolute_error/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: S

Identity_3Identityprecip_loss/mul:z:0^NoOp*
T0*
_output_shapes
: O

Identity_4Identityhr_loss/mul:z:0^NoOp*
T0*
_output_shapes
: X

Identity_5Identityrotationloss/truediv:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^hr_loss/AssignAddVariableOp^hr_loss/AssignAddVariableOp_1"^hr_loss/div_no_nan/ReadVariableOp$^hr_loss/div_no_nan/ReadVariableOp_1*^model_34/conv2d_60/BiasAdd/ReadVariableOp,^model_34/conv2d_60/BiasAdd_1/ReadVariableOp)^model_34/conv2d_60/Conv2D/ReadVariableOp+^model_34/conv2d_60/Conv2D_1/ReadVariableOp*^model_34/conv2d_61/BiasAdd/ReadVariableOp,^model_34/conv2d_61/BiasAdd_1/ReadVariableOp)^model_34/conv2d_61/Conv2D/ReadVariableOp+^model_34/conv2d_61/Conv2D_1/ReadVariableOp*^model_34/conv2d_62/BiasAdd/ReadVariableOp,^model_34/conv2d_62/BiasAdd_1/ReadVariableOp)^model_34/conv2d_62/Conv2D/ReadVariableOp+^model_34/conv2d_62/Conv2D_1/ReadVariableOp&^model_34/xmean/BiasAdd/ReadVariableOp(^model_34/xmean/BiasAdd_1/ReadVariableOp%^model_34/xmean/MatMul/ReadVariableOp'^model_34/xmean/MatMul_1/ReadVariableOp(^precip/dense_248/BiasAdd/ReadVariableOp'^precip/dense_248/MatMul/ReadVariableOp(^precip/dense_249/BiasAdd/ReadVariableOp'^precip/dense_249/MatMul/ReadVariableOp(^precip/dense_250/BiasAdd/ReadVariableOp'^precip/dense_250/MatMul/ReadVariableOp(^precip/dense_251/BiasAdd/ReadVariableOp'^precip/dense_251/MatMul/ReadVariableOp%^precip/precip/BiasAdd/ReadVariableOp$^precip/precip/MatMul/ReadVariableOp ^precip_loss/AssignAddVariableOp"^precip_loss/AssignAddVariableOp_1&^precip_loss/div_no_nan/ReadVariableOp(^precip_loss/div_no_nan/ReadVariableOp_1)^reconst/dense_240/BiasAdd/ReadVariableOp(^reconst/dense_240/MatMul/ReadVariableOp)^reconst/dense_241/BiasAdd/ReadVariableOp(^reconst/dense_241/MatMul/ReadVariableOp)^reconst/dense_242/BiasAdd/ReadVariableOp(^reconst/dense_242/MatMul/ReadVariableOp)^reconst/dense_243/BiasAdd/ReadVariableOp(^reconst/dense_243/MatMul/ReadVariableOp)^reconst/dense_244/BiasAdd/ReadVariableOp(^reconst/dense_244/MatMul/ReadVariableOp)^reconst/dense_245/BiasAdd/ReadVariableOp(^reconst/dense_245/MatMul/ReadVariableOp!^rotationloss/AssignAddVariableOp#^rotationloss/AssignAddVariableOp_1#^rotationloss/AssignAddVariableOp_2#^rotationloss/AssignAddVariableOp_3'^rotationloss/div_no_nan/ReadVariableOp)^rotationloss/div_no_nan/ReadVariableOp_1)^rotationloss/div_no_nan_1/ReadVariableOp+^rotationloss/div_no_nan_1/ReadVariableOp_1'^sequential_20/random_flip_40/map/while'^sequential_20/random_flip_41/map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������  :���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
hr_loss/AssignAddVariableOphr_loss/AssignAddVariableOp2>
hr_loss/AssignAddVariableOp_1hr_loss/AssignAddVariableOp_12F
!hr_loss/div_no_nan/ReadVariableOp!hr_loss/div_no_nan/ReadVariableOp2J
#hr_loss/div_no_nan/ReadVariableOp_1#hr_loss/div_no_nan/ReadVariableOp_12V
)model_34/conv2d_60/BiasAdd/ReadVariableOp)model_34/conv2d_60/BiasAdd/ReadVariableOp2Z
+model_34/conv2d_60/BiasAdd_1/ReadVariableOp+model_34/conv2d_60/BiasAdd_1/ReadVariableOp2T
(model_34/conv2d_60/Conv2D/ReadVariableOp(model_34/conv2d_60/Conv2D/ReadVariableOp2X
*model_34/conv2d_60/Conv2D_1/ReadVariableOp*model_34/conv2d_60/Conv2D_1/ReadVariableOp2V
)model_34/conv2d_61/BiasAdd/ReadVariableOp)model_34/conv2d_61/BiasAdd/ReadVariableOp2Z
+model_34/conv2d_61/BiasAdd_1/ReadVariableOp+model_34/conv2d_61/BiasAdd_1/ReadVariableOp2T
(model_34/conv2d_61/Conv2D/ReadVariableOp(model_34/conv2d_61/Conv2D/ReadVariableOp2X
*model_34/conv2d_61/Conv2D_1/ReadVariableOp*model_34/conv2d_61/Conv2D_1/ReadVariableOp2V
)model_34/conv2d_62/BiasAdd/ReadVariableOp)model_34/conv2d_62/BiasAdd/ReadVariableOp2Z
+model_34/conv2d_62/BiasAdd_1/ReadVariableOp+model_34/conv2d_62/BiasAdd_1/ReadVariableOp2T
(model_34/conv2d_62/Conv2D/ReadVariableOp(model_34/conv2d_62/Conv2D/ReadVariableOp2X
*model_34/conv2d_62/Conv2D_1/ReadVariableOp*model_34/conv2d_62/Conv2D_1/ReadVariableOp2N
%model_34/xmean/BiasAdd/ReadVariableOp%model_34/xmean/BiasAdd/ReadVariableOp2R
'model_34/xmean/BiasAdd_1/ReadVariableOp'model_34/xmean/BiasAdd_1/ReadVariableOp2L
$model_34/xmean/MatMul/ReadVariableOp$model_34/xmean/MatMul/ReadVariableOp2P
&model_34/xmean/MatMul_1/ReadVariableOp&model_34/xmean/MatMul_1/ReadVariableOp2R
'precip/dense_248/BiasAdd/ReadVariableOp'precip/dense_248/BiasAdd/ReadVariableOp2P
&precip/dense_248/MatMul/ReadVariableOp&precip/dense_248/MatMul/ReadVariableOp2R
'precip/dense_249/BiasAdd/ReadVariableOp'precip/dense_249/BiasAdd/ReadVariableOp2P
&precip/dense_249/MatMul/ReadVariableOp&precip/dense_249/MatMul/ReadVariableOp2R
'precip/dense_250/BiasAdd/ReadVariableOp'precip/dense_250/BiasAdd/ReadVariableOp2P
&precip/dense_250/MatMul/ReadVariableOp&precip/dense_250/MatMul/ReadVariableOp2R
'precip/dense_251/BiasAdd/ReadVariableOp'precip/dense_251/BiasAdd/ReadVariableOp2P
&precip/dense_251/MatMul/ReadVariableOp&precip/dense_251/MatMul/ReadVariableOp2L
$precip/precip/BiasAdd/ReadVariableOp$precip/precip/BiasAdd/ReadVariableOp2J
#precip/precip/MatMul/ReadVariableOp#precip/precip/MatMul/ReadVariableOp2B
precip_loss/AssignAddVariableOpprecip_loss/AssignAddVariableOp2F
!precip_loss/AssignAddVariableOp_1!precip_loss/AssignAddVariableOp_12N
%precip_loss/div_no_nan/ReadVariableOp%precip_loss/div_no_nan/ReadVariableOp2R
'precip_loss/div_no_nan/ReadVariableOp_1'precip_loss/div_no_nan/ReadVariableOp_12T
(reconst/dense_240/BiasAdd/ReadVariableOp(reconst/dense_240/BiasAdd/ReadVariableOp2R
'reconst/dense_240/MatMul/ReadVariableOp'reconst/dense_240/MatMul/ReadVariableOp2T
(reconst/dense_241/BiasAdd/ReadVariableOp(reconst/dense_241/BiasAdd/ReadVariableOp2R
'reconst/dense_241/MatMul/ReadVariableOp'reconst/dense_241/MatMul/ReadVariableOp2T
(reconst/dense_242/BiasAdd/ReadVariableOp(reconst/dense_242/BiasAdd/ReadVariableOp2R
'reconst/dense_242/MatMul/ReadVariableOp'reconst/dense_242/MatMul/ReadVariableOp2T
(reconst/dense_243/BiasAdd/ReadVariableOp(reconst/dense_243/BiasAdd/ReadVariableOp2R
'reconst/dense_243/MatMul/ReadVariableOp'reconst/dense_243/MatMul/ReadVariableOp2T
(reconst/dense_244/BiasAdd/ReadVariableOp(reconst/dense_244/BiasAdd/ReadVariableOp2R
'reconst/dense_244/MatMul/ReadVariableOp'reconst/dense_244/MatMul/ReadVariableOp2T
(reconst/dense_245/BiasAdd/ReadVariableOp(reconst/dense_245/BiasAdd/ReadVariableOp2R
'reconst/dense_245/MatMul/ReadVariableOp'reconst/dense_245/MatMul/ReadVariableOp2D
 rotationloss/AssignAddVariableOp rotationloss/AssignAddVariableOp2H
"rotationloss/AssignAddVariableOp_1"rotationloss/AssignAddVariableOp_12H
"rotationloss/AssignAddVariableOp_2"rotationloss/AssignAddVariableOp_22H
"rotationloss/AssignAddVariableOp_3"rotationloss/AssignAddVariableOp_32P
&rotationloss/div_no_nan/ReadVariableOp&rotationloss/div_no_nan/ReadVariableOp2T
(rotationloss/div_no_nan/ReadVariableOp_1(rotationloss/div_no_nan/ReadVariableOp_12T
(rotationloss/div_no_nan_1/ReadVariableOp(rotationloss/div_no_nan_1/ReadVariableOp2X
*rotationloss/div_no_nan_1/ReadVariableOp_1*rotationloss/div_no_nan_1/ReadVariableOp_12P
&sequential_20/random_flip_40/map/while&sequential_20/random_flip_40/map/while2P
&sequential_20/random_flip_41/map/while&sequential_20/random_flip_41/map/while:Y U
/
_output_shapes
:���������  
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�
�
,__inference_dense_243_layer_call_fn_13768561

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_243_layer_call_and_return_conditional_losses_13764467p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
,__inference_conv2d_61_layer_call_fn_13767984

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13763403w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_sequential_20_layer_call_fn_13767140

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764039w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Erandom_flip_40_map_while_stateless_random_flip_up_down_false_13767269�
�random_flip_40_map_while_stateless_random_flip_up_down_identity_random_flip_40_map_while_stateless_random_flip_up_down_control_dependencyC
?random_flip_40_map_while_stateless_random_flip_up_down_identity�
?random_flip_40/map/while/stateless_random_flip_up_down/IdentityIdentity�random_flip_40_map_while_stateless_random_flip_up_down_identity_random_flip_40_map_while_stateless_random_flip_up_down_control_dependency*
T0*"
_output_shapes
:  "�
?random_flip_40_map_while_stateless_random_flip_up_down_identityHrandom_flip_40/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�

�
G__inference_dense_244_layer_call_and_return_conditional_losses_13764484

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�9
�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767456

inputs.
 random_flip_40_map_while_input_6:	.
 random_flip_41_map_while_input_6:	
identity��random_flip_40/map/while�random_flip_41/map/whileN
random_flip_40/map/ShapeShapeinputs*
T0*
_output_shapes
:p
&random_flip_40/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(random_flip_40/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(random_flip_40/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 random_flip_40/map/strided_sliceStridedSlice!random_flip_40/map/Shape:output:0/random_flip_40/map/strided_slice/stack:output:01random_flip_40/map/strided_slice/stack_1:output:01random_flip_40/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.random_flip_40/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
 random_flip_40/map/TensorArrayV2TensorListReserve7random_flip_40/map/TensorArrayV2/element_shape:output:0)random_flip_40/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Hrandom_flip_40/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
:random_flip_40/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsQrandom_flip_40/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���Z
random_flip_40/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
0random_flip_40/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
"random_flip_40/map/TensorArrayV2_1TensorListReserve9random_flip_40/map/TensorArrayV2_1/element_shape:output:0)random_flip_40/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
%random_flip_40/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
random_flip_40/map/whileWhile.random_flip_40/map/while/loop_counter:output:0)random_flip_40/map/strided_slice:output:0!random_flip_40/map/Const:output:0+random_flip_40/map/TensorArrayV2_1:handle:0)random_flip_40/map/strided_slice:output:0Jrandom_flip_40/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0 random_flip_40_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *2
body*R(
&random_flip_40_map_while_body_13767160*2
cond*R(
&random_flip_40_map_while_cond_13767159*!
output_shapes
: : : : : : : �
Crandom_flip_40/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
5random_flip_40/map/TensorArrayV2Stack/TensorListStackTensorListStack!random_flip_40/map/while:output:3Lrandom_flip_40/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0�
random_flip_41/map/ShapeShape>random_flip_40/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:p
&random_flip_41/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(random_flip_41/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(random_flip_41/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 random_flip_41/map/strided_sliceStridedSlice!random_flip_41/map/Shape:output:0/random_flip_41/map/strided_slice/stack:output:01random_flip_41/map/strided_slice/stack_1:output:01random_flip_41/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.random_flip_41/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
 random_flip_41/map/TensorArrayV2TensorListReserve7random_flip_41/map/TensorArrayV2/element_shape:output:0)random_flip_41/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Hrandom_flip_41/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
:random_flip_41/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor>random_flip_40/map/TensorArrayV2Stack/TensorListStack:tensor:0Qrandom_flip_41/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���Z
random_flip_41/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : {
0random_flip_41/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
"random_flip_41/map/TensorArrayV2_1TensorListReserve9random_flip_41/map/TensorArrayV2_1/element_shape:output:0)random_flip_41/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
%random_flip_41/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
random_flip_41/map/whileWhile.random_flip_41/map/while/loop_counter:output:0)random_flip_41/map/strided_slice:output:0!random_flip_41/map/Const:output:0+random_flip_41/map/TensorArrayV2_1:handle:0)random_flip_41/map/strided_slice:output:0Jrandom_flip_41/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0 random_flip_41_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *2
body*R(
&random_flip_41_map_while_body_13767314*2
cond*R(
&random_flip_41_map_while_cond_13767313*!
output_shapes
: : : : : : : �
Crandom_flip_41/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"           �
5random_flip_41/map/TensorArrayV2Stack/TensorListStackTensorListStack!random_flip_41/map/while:output:3Lrandom_flip_41/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*/
_output_shapes
:���������  *
element_dtype0�
IdentityIdentity>random_flip_41/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*/
_output_shapes
:���������  |
NoOpNoOp^random_flip_40/map/while^random_flip_41/map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 24
random_flip_40/map/whilerandom_flip_40/map/while24
random_flip_41/map/whilerandom_flip_41/map/while:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
d
H__inference_flatten_20_layer_call_and_return_conditional_losses_13763432

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
5map_while_stateless_random_flip_up_down_true_13763983p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*"
_output_shapes
:  �
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*"
_output_shapes
:  "m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:  :( $
"
_output_shapes
:  
�*
�
F__inference_model_34_layer_call_and_return_conditional_losses_13767078

inputsB
(conv2d_60_conv2d_readvariableop_resource:7
)conv2d_60_biasadd_readvariableop_resource:B
(conv2d_61_conv2d_readvariableop_resource:7
)conv2d_61_biasadd_readvariableop_resource:B
(conv2d_62_conv2d_readvariableop_resource:7
)conv2d_62_biasadd_readvariableop_resource:7
$xmean_matmul_readvariableop_resource:	�3
%xmean_biasadd_readvariableop_resource:
identity�� conv2d_60/BiasAdd/ReadVariableOp�conv2d_60/Conv2D/ReadVariableOp� conv2d_61/BiasAdd/ReadVariableOp�conv2d_61/Conv2D/ReadVariableOp� conv2d_62/BiasAdd/ReadVariableOp�conv2d_62/Conv2D/ReadVariableOp�xmean/BiasAdd/ReadVariableOp�xmean/MatMul/ReadVariableOp�
zero_padding2d_20/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
zero_padding2d_20/PadPadinputs'zero_padding2d_20/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_60/Conv2DConv2Dzero_padding2d_20/Pad:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_61/Conv2DConv2Dconv2d_60/Relu:activations:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	l
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_62/Conv2DConv2Dconv2d_61/Relu:activations:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������a
flatten_20/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_20/ReshapeReshapeconv2d_62/Relu:activations:0flatten_20/Const:output:0*
T0*(
_output_shapes
:�����������
xmean/MatMul/ReadVariableOpReadVariableOp$xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
xmean/MatMulMatMulflatten_20/Reshape:output:0#xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
xmean/BiasAdd/ReadVariableOpReadVariableOp%xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
xmean/BiasAddBiasAddxmean/MatMul:product:0$xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
IdentityIdentityxmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp^xmean/BiasAdd/ReadVariableOp^xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2<
xmean/BiasAdd/ReadVariableOpxmean/BiasAdd/ReadVariableOp2:
xmean/MatMul/ReadVariableOpxmean/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
*__inference_reconst_layer_call_fn_13764549
	input_155
unknown:@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_155unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_reconst_layer_call_and_return_conditional_losses_13764522s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_155
�$
�
E__inference_reconst_layer_call_and_return_conditional_losses_13764807
	input_155$
dense_240_13764775:@ 
dense_240_13764777:@%
dense_241_13764780:	@�!
dense_241_13764782:	�&
dense_242_13764785:
��!
dense_242_13764787:	�&
dense_243_13764790:
��!
dense_243_13764792:	�&
dense_244_13764795:
��!
dense_244_13764797:	�&
dense_245_13764800:
��!
dense_245_13764802:	�
identity��!dense_240/StatefulPartitionedCall�!dense_241/StatefulPartitionedCall�!dense_242/StatefulPartitionedCall�!dense_243/StatefulPartitionedCall�!dense_244/StatefulPartitionedCall�!dense_245/StatefulPartitionedCall�
!dense_240/StatefulPartitionedCallStatefulPartitionedCall	input_155dense_240_13764775dense_240_13764777*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_240_layer_call_and_return_conditional_losses_13764416�
!dense_241/StatefulPartitionedCallStatefulPartitionedCall*dense_240/StatefulPartitionedCall:output:0dense_241_13764780dense_241_13764782*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_241_layer_call_and_return_conditional_losses_13764433�
!dense_242/StatefulPartitionedCallStatefulPartitionedCall*dense_241/StatefulPartitionedCall:output:0dense_242_13764785dense_242_13764787*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_242_layer_call_and_return_conditional_losses_13764450�
!dense_243/StatefulPartitionedCallStatefulPartitionedCall*dense_242/StatefulPartitionedCall:output:0dense_243_13764790dense_243_13764792*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_243_layer_call_and_return_conditional_losses_13764467�
!dense_244/StatefulPartitionedCallStatefulPartitionedCall*dense_243/StatefulPartitionedCall:output:0dense_244_13764795dense_244_13764797*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_244_layer_call_and_return_conditional_losses_13764484�
!dense_245/StatefulPartitionedCallStatefulPartitionedCall*dense_244/StatefulPartitionedCall:output:0dense_245_13764800dense_245_13764802*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_245_layer_call_and_return_conditional_losses_13764500�
Reconst/PartitionedCallPartitionedCall*dense_245/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Reconst_layer_call_and_return_conditional_losses_13764519s
IdentityIdentity Reconst/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������  �
NoOpNoOp"^dense_240/StatefulPartitionedCall"^dense_241/StatefulPartitionedCall"^dense_242/StatefulPartitionedCall"^dense_243/StatefulPartitionedCall"^dense_244/StatefulPartitionedCall"^dense_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2F
!dense_240/StatefulPartitionedCall!dense_240/StatefulPartitionedCall2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2F
!dense_242/StatefulPartitionedCall!dense_242/StatefulPartitionedCall2F
!dense_243/StatefulPartitionedCall!dense_243/StatefulPartitionedCall2F
!dense_244/StatefulPartitionedCall!dense_244/StatefulPartitionedCall2F
!dense_245/StatefulPartitionedCall!dense_245/StatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_155
�
�
D__inference_precip_layer_call_and_return_conditional_losses_13764369
	input_157%
dense_248_13764343:	�!
dense_248_13764345:	�&
dense_249_13764348:
��!
dense_249_13764350:	�&
dense_250_13764353:
��!
dense_250_13764355:	�%
dense_251_13764358:	�@ 
dense_251_13764360:@!
precip_13764363:@
precip_13764365:
identity��!dense_248/StatefulPartitionedCall�!dense_249/StatefulPartitionedCall�!dense_250/StatefulPartitionedCall�!dense_251/StatefulPartitionedCall�precip/StatefulPartitionedCall�
!dense_248/StatefulPartitionedCallStatefulPartitionedCall	input_157dense_248_13764343dense_248_13764345*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_248_layer_call_and_return_conditional_losses_13764089�
!dense_249/StatefulPartitionedCallStatefulPartitionedCall*dense_248/StatefulPartitionedCall:output:0dense_249_13764348dense_249_13764350*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_249_layer_call_and_return_conditional_losses_13764106�
!dense_250/StatefulPartitionedCallStatefulPartitionedCall*dense_249/StatefulPartitionedCall:output:0dense_250_13764353dense_250_13764355*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_250_layer_call_and_return_conditional_losses_13764123�
!dense_251/StatefulPartitionedCallStatefulPartitionedCall*dense_250/StatefulPartitionedCall:output:0dense_251_13764358dense_251_13764360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dense_251_layer_call_and_return_conditional_losses_13764140�
precip/StatefulPartitionedCallStatefulPartitionedCall*dense_251/StatefulPartitionedCall:output:0precip_13764363precip_13764365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_precip_layer_call_and_return_conditional_losses_13764156v
IdentityIdentity'precip/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_248/StatefulPartitionedCall"^dense_249/StatefulPartitionedCall"^dense_250/StatefulPartitionedCall"^dense_251/StatefulPartitionedCall^precip/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2F
!dense_248/StatefulPartitionedCall!dense_248/StatefulPartitionedCall2F
!dense_249/StatefulPartitionedCall!dense_249/StatefulPartitionedCall2F
!dense_250/StatefulPartitionedCall!dense_250/StatefulPartitionedCall2F
!dense_251/StatefulPartitionedCall!dense_251/StatefulPartitionedCall2@
precip/StatefulPartitionedCallprecip/StatefulPartitionedCall:R N
'
_output_shapes
:���������
#
_user_specified_name	input_157"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
G
	input_158:
serving_default_input_158:0���������  
?
	input_1592
serving_default_input_159:0���������
?
	input_1602
serving_default_input_160:0���������?
hr_loss4
StatefulPartitionedCall:0���������  ?
precip_loss0
StatefulPartitionedCall:1���������/
rotationloss
StatefulPartitionedCall:2 tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
�
)layer-0
*layer-1
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
1layer-0
2layer_with_weights-0
2layer-1
3layer_with_weights-1
3layer-2
4layer_with_weights-2
4layer-3
5layer_with_weights-3
5layer-4
6layer_with_weights-4
6layer-5
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
�
=layer-0
>layer_with_weights-0
>layer-1
?layer_with_weights-1
?layer-2
@layer_with_weights-2
@layer-3
Alayer_with_weights-3
Alayer-4
Blayer_with_weights-4
Blayer-5
Clayer_with_weights-5
Clayer-6
Dlayer-7
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_network
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
�
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11
i12
j13
k14
l15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29"
trackable_list_wrapper
�
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11
i12
j13
k14
l15
m16
n17
o18
p19
q20
r21
s22
t23
u24
v25
w26
x27
y28
z29"
trackable_list_wrapper
 "
trackable_list_wrapper
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
+__inference_model_35_layer_call_fn_13765176
+__inference_model_35_layer_call_fn_13766015
+__inference_model_35_layer_call_fn_13766109
+__inference_model_35_layer_call_fn_13765612�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
F__inference_model_35_layer_call_and_return_conditional_losses_13766401
F__inference_model_35_layer_call_and_return_conditional_losses_13767001
F__inference_model_35_layer_call_and_return_conditional_losses_13765719
F__inference_model_35_layer_call_and_return_conditional_losses_13765830�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
#__inference__wrapped_model_13763354	input_158	input_159	input_160"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�beta_1
�beta_2

�decay
�learning_rate
	�iter]m�^m�_m�`m�am�bm�cm�dm�em�fm�gm�hm�im�jm�km�lm�mm�nm�om�pm�qm�rm�sm�tm�um�vm�wm�xm�ym�zm�]v�^v�_v�`v�av�bv�cv�dv�ev�fv�gv�hv�iv�jv�kv�lv�mv�nv�ov�pv�qv�rv�sv�tv�uv�vv�wv�xv�yv�zv�"
	optimizer
 "
trackable_dict_wrapper
-
�serving_default"
signature_map
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

_kernel
`bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

akernel
bbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ckernel
dbias"
_tf_keras_layer
X
]0
^1
_2
`3
a4
b5
c6
d7"
trackable_list_wrapper
X
]0
^1
_2
`3
a4
b5
c6
d7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
+__inference_model_34_layer_call_fn_13763470
+__inference_model_34_layer_call_fn_13767022
+__inference_model_34_layer_call_fn_13767043
+__inference_model_34_layer_call_fn_13763605�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
F__inference_model_34_layer_call_and_return_conditional_losses_13767078
F__inference_model_34_layer_call_and_return_conditional_losses_13767113
F__inference_model_34_layer_call_and_return_conditional_losses_13763631
F__inference_model_34_layer_call_and_return_conditional_losses_13763657�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_concatenate_18_layer_call_fn_13767119�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13767126�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
0__inference_sequential_20_layer_call_fn_13763680
0__inference_sequential_20_layer_call_fn_13767131
0__inference_sequential_20_layer_call_fn_13767140
0__inference_sequential_20_layer_call_fn_13764055�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767144
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767456
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764061
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764071�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

gkernel
hbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ikernel
jbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kkernel
lbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

mkernel
nbias"
_tf_keras_layer
f
e0
f1
g2
h3
i4
j5
k6
l7
m8
n9"
trackable_list_wrapper
f
e0
f1
g2
h3
i4
j5
k6
l7
m8
n9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
)__inference_precip_layer_call_fn_13764186
)__inference_precip_layer_call_fn_13767481
)__inference_precip_layer_call_fn_13767506
)__inference_precip_layer_call_fn_13764340�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
D__inference_precip_layer_call_and_return_conditional_losses_13767544
D__inference_precip_layer_call_and_return_conditional_losses_13767582
D__inference_precip_layer_call_and_return_conditional_losses_13764369
D__inference_precip_layer_call_and_return_conditional_losses_13764398�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
7
�_init_input_shape"
_tf_keras_input_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

qkernel
rbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

skernel
tbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ukernel
vbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

wkernel
xbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

ykernel
zbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
v
o0
p1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11"
trackable_list_wrapper
v
o0
p1
q2
r3
s4
t5
u6
v7
w8
x9
y10
z11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
*__inference_reconst_layer_call_fn_13764549
*__inference_reconst_layer_call_fn_13767611
*__inference_reconst_layer_call_fn_13767640
*__inference_reconst_layer_call_fn_13764737�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
E__inference_reconst_layer_call_and_return_conditional_losses_13767694
E__inference_reconst_layer_call_and_return_conditional_losses_13767748
E__inference_reconst_layer_call_and_return_conditional_losses_13764772
E__inference_reconst_layer_call_and_return_conditional_losses_13764807�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_precip_loss_layer_call_fn_13767759�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_precip_loss_layer_call_and_return_conditional_losses_13767810�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_hr_loss_layer_call_fn_13767821�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_hr_loss_layer_call_and_return_conditional_losses_13767874�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_rotationloss_layer_call_fn_13767889�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_rotationloss_layer_call_and_return_conditional_losses_13767944�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_60/kernel
:2conv2d_60/bias
*:(2conv2d_61/kernel
:2conv2d_61/bias
*:(2conv2d_62/kernel
:2conv2d_62/bias
:	�2xmean/kernel
:2
xmean/bias
#:!	�2dense_248/kernel
:�2dense_248/bias
$:"
��2dense_249/kernel
:�2dense_249/bias
$:"
��2dense_250/kernel
:�2dense_250/bias
#:!	�@2dense_251/kernel
:@2dense_251/bias
:@2precip/kernel
:2precip/bias
": @2dense_240/kernel
:@2dense_240/bias
#:!	@�2dense_241/kernel
:�2dense_241/bias
$:"
��2dense_242/kernel
:�2dense_242/bias
$:"
��2dense_243/kernel
:�2dense_243/bias
$:"
��2dense_244/kernel
:�2dense_244/bias
$:"
��2dense_245/kernel
:�2dense_245/bias
 "
trackable_list_wrapper
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
10"
trackable_list_wrapper
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_model_35_layer_call_fn_13765176	input_158	input_159	input_160"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_35_layer_call_fn_13766015inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_35_layer_call_fn_13766109inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_35_layer_call_fn_13765612	input_158	input_159	input_160"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_35_layer_call_and_return_conditional_losses_13766401inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_35_layer_call_and_return_conditional_losses_13767001inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_35_layer_call_and_return_conditional_losses_13765719	input_158	input_159	input_160"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_35_layer_call_and_return_conditional_losses_13765830	input_158	input_159	input_160"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
�B�
&__inference_signature_wrapper_13765925	input_158	input_159	input_160"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_zero_padding2d_20_layer_call_fn_13767949�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13767955�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv2d_60_layer_call_fn_13767964�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13767975�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv2d_61_layer_call_fn_13767984�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13767995�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv2d_62_layer_call_fn_13768004�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13768015�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_flatten_20_layer_call_fn_13768020�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_flatten_20_layer_call_and_return_conditional_losses_13768026�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_xmean_layer_call_fn_13768035�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_xmean_layer_call_and_return_conditional_losses_13768045�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_model_34_layer_call_fn_13763470	input_154"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_34_layer_call_fn_13767022inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_34_layer_call_fn_13767043inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_34_layer_call_fn_13763605	input_154"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_34_layer_call_and_return_conditional_losses_13767078inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_34_layer_call_and_return_conditional_losses_13767113inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_34_layer_call_and_return_conditional_losses_13763631	input_154"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_34_layer_call_and_return_conditional_losses_13763657	input_154"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
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
�B�
1__inference_concatenate_18_layer_call_fn_13767119inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13767126inputs/0inputs/1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_random_flip_40_layer_call_fn_13768050
1__inference_random_flip_40_layer_call_fn_13768057�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768061
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768219�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_random_flip_41_layer_call_fn_13768224
1__inference_random_flip_41_layer_call_fn_13768231�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768235
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768393�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_sequential_20_layer_call_fn_13763680random_flip_40_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
0__inference_sequential_20_layer_call_fn_13767131inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
0__inference_sequential_20_layer_call_fn_13767140inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
0__inference_sequential_20_layer_call_fn_13764055random_flip_40_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767144inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767456inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764061random_flip_40_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764071random_flip_40_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_248_layer_call_fn_13768402�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_248_layer_call_and_return_conditional_losses_13768413�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_249_layer_call_fn_13768422�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_249_layer_call_and_return_conditional_losses_13768433�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_250_layer_call_fn_13768442�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_250_layer_call_and_return_conditional_losses_13768453�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_251_layer_call_fn_13768462�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_251_layer_call_and_return_conditional_losses_13768473�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_precip_layer_call_fn_13768482�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_precip_layer_call_and_return_conditional_losses_13768492�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
J
10
21
32
43
54
65"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_precip_layer_call_fn_13764186	input_157"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_precip_layer_call_fn_13767481inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_precip_layer_call_fn_13767506inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_precip_layer_call_fn_13764340	input_157"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_precip_layer_call_and_return_conditional_losses_13767544inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_precip_layer_call_and_return_conditional_losses_13767582inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_precip_layer_call_and_return_conditional_losses_13764369	input_157"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_precip_layer_call_and_return_conditional_losses_13764398	input_157"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_240_layer_call_fn_13768501�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_240_layer_call_and_return_conditional_losses_13768512�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_241_layer_call_fn_13768521�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_241_layer_call_and_return_conditional_losses_13768532�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_242_layer_call_fn_13768541�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_242_layer_call_and_return_conditional_losses_13768552�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_243_layer_call_fn_13768561�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_243_layer_call_and_return_conditional_losses_13768572�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_244_layer_call_fn_13768581�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_244_layer_call_and_return_conditional_losses_13768592�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_dense_245_layer_call_fn_13768601�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_dense_245_layer_call_and_return_conditional_losses_13768611�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Reconst_layer_call_fn_13768616�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Reconst_layer_call_and_return_conditional_losses_13768629�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
X
=0
>1
?2
@3
A4
B5
C6
D7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_reconst_layer_call_fn_13764549	input_155"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_reconst_layer_call_fn_13767611inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_reconst_layer_call_fn_13767640inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
*__inference_reconst_layer_call_fn_13764737	input_155"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_reconst_layer_call_and_return_conditional_losses_13767694inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_reconst_layer_call_and_return_conditional_losses_13767748inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_reconst_layer_call_and_return_conditional_losses_13764772	input_155"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
E__inference_reconst_layer_call_and_return_conditional_losses_13764807	input_155"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
5
�precip_lossmse"
trackable_dict_wrapper
�B�
.__inference_precip_loss_layer_call_fn_13767759inputs/predinputs/true"�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_precip_loss_layer_call_and_return_conditional_losses_13767810inputs/predinputs/true"�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
1
�
hr_lossmse"
trackable_dict_wrapper
�B�
*__inference_hr_loss_layer_call_fn_13767821inputs/predinputs/true"�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_hr_loss_layer_call_and_return_conditional_losses_13767874inputs/predinputs/true"�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
B
�rotationloss
�mean_org"
trackable_dict_wrapper
�B�
/__inference_rotationloss_layer_call_fn_13767889inputs/predinputs/true"�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_rotationloss_layer_call_and_return_conditional_losses_13767944inputs/predinputs/true"�
���
FullArgSpec(
args �
jself
jinputs
	jweights
varargs
 
varkw
 
defaults�
`

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
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
�B�
4__inference_zero_padding2d_20_layer_call_fn_13767949inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13767955inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_conv2d_60_layer_call_fn_13767964inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13767975inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_conv2d_61_layer_call_fn_13767984inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13767995inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_conv2d_62_layer_call_fn_13768004inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13768015inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_flatten_20_layer_call_fn_13768020inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_flatten_20_layer_call_and_return_conditional_losses_13768026inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_xmean_layer_call_fn_13768035inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_xmean_layer_call_and_return_conditional_losses_13768045inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_random_flip_40_layer_call_fn_13768050inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
1__inference_random_flip_40_layer_call_fn_13768057inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768061inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768219inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/
�
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
�B�
1__inference_random_flip_41_layer_call_fn_13768224inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
1__inference_random_flip_41_layer_call_fn_13768231inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768235inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768393inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/
�
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
�B�
,__inference_dense_248_layer_call_fn_13768402inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_248_layer_call_and_return_conditional_losses_13768413inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_249_layer_call_fn_13768422inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_249_layer_call_and_return_conditional_losses_13768433inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_250_layer_call_fn_13768442inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_250_layer_call_and_return_conditional_losses_13768453inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_251_layer_call_fn_13768462inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_251_layer_call_and_return_conditional_losses_13768473inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_precip_layer_call_fn_13768482inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_precip_layer_call_and_return_conditional_losses_13768492inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_240_layer_call_fn_13768501inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_240_layer_call_and_return_conditional_losses_13768512inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_241_layer_call_fn_13768521inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_241_layer_call_and_return_conditional_losses_13768532inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_242_layer_call_fn_13768541inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_242_layer_call_and_return_conditional_losses_13768552inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_243_layer_call_fn_13768561inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_243_layer_call_and_return_conditional_losses_13768572inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_244_layer_call_fn_13768581inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_244_layer_call_and_return_conditional_losses_13768592inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_dense_245_layer_call_fn_13768601inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dense_245_layer_call_and_return_conditional_losses_13768611inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_Reconst_layer_call_fn_13768616inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Reconst_layer_call_and_return_conditional_losses_13768629inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2precip_loss/total
:  (2precip_loss/count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2hr_loss/total
:  (2hr_loss/count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2rotationloss/total
:  (2rotationloss/count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2rotationloss/total
:  (2rotationloss/count
:	2StateVar
:	2StateVar
/:-2Adam/conv2d_60/kernel/m
!:2Adam/conv2d_60/bias/m
/:-2Adam/conv2d_61/kernel/m
!:2Adam/conv2d_61/bias/m
/:-2Adam/conv2d_62/kernel/m
!:2Adam/conv2d_62/bias/m
$:"	�2Adam/xmean/kernel/m
:2Adam/xmean/bias/m
(:&	�2Adam/dense_248/kernel/m
": �2Adam/dense_248/bias/m
):'
��2Adam/dense_249/kernel/m
": �2Adam/dense_249/bias/m
):'
��2Adam/dense_250/kernel/m
": �2Adam/dense_250/bias/m
(:&	�@2Adam/dense_251/kernel/m
!:@2Adam/dense_251/bias/m
$:"@2Adam/precip/kernel/m
:2Adam/precip/bias/m
':%@2Adam/dense_240/kernel/m
!:@2Adam/dense_240/bias/m
(:&	@�2Adam/dense_241/kernel/m
": �2Adam/dense_241/bias/m
):'
��2Adam/dense_242/kernel/m
": �2Adam/dense_242/bias/m
):'
��2Adam/dense_243/kernel/m
": �2Adam/dense_243/bias/m
):'
��2Adam/dense_244/kernel/m
": �2Adam/dense_244/bias/m
):'
��2Adam/dense_245/kernel/m
": �2Adam/dense_245/bias/m
/:-2Adam/conv2d_60/kernel/v
!:2Adam/conv2d_60/bias/v
/:-2Adam/conv2d_61/kernel/v
!:2Adam/conv2d_61/bias/v
/:-2Adam/conv2d_62/kernel/v
!:2Adam/conv2d_62/bias/v
$:"	�2Adam/xmean/kernel/v
:2Adam/xmean/bias/v
(:&	�2Adam/dense_248/kernel/v
": �2Adam/dense_248/bias/v
):'
��2Adam/dense_249/kernel/v
": �2Adam/dense_249/bias/v
):'
��2Adam/dense_250/kernel/v
": �2Adam/dense_250/bias/v
(:&	�@2Adam/dense_251/kernel/v
!:@2Adam/dense_251/bias/v
$:"@2Adam/precip/kernel/v
:2Adam/precip/bias/v
':%@2Adam/dense_240/kernel/v
!:@2Adam/dense_240/bias/v
(:&	@�2Adam/dense_241/kernel/v
": �2Adam/dense_241/bias/v
):'
��2Adam/dense_242/kernel/v
": �2Adam/dense_242/bias/v
):'
��2Adam/dense_243/kernel/v
": �2Adam/dense_243/bias/v
):'
��2Adam/dense_244/kernel/v
": �2Adam/dense_244/bias/v
):'
��2Adam/dense_245/kernel/v
": �2Adam/dense_245/bias/v�
E__inference_Reconst_layer_call_and_return_conditional_losses_13768629]0�-
&�#
!�
inputs����������
� ")�&
�
0���������  
� ~
*__inference_Reconst_layer_call_fn_13768616P0�-
&�#
!�
inputs����������
� "����������  �
#__inference__wrapped_model_13763354�.]^_`abcdopqrstuvwxyzefghijklmn�����������
�|
z�w
+�(
	input_158���������  
#� 
	input_159���������
#� 
	input_160���������
� "���
0
hr_loss%�"
hr_loss���������  
4
precip_loss%�"
precip_loss���������
%
rotationloss�
rotationloss �
L__inference_concatenate_18_layer_call_and_return_conditional_losses_13767126�Z�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "%�"
�
0���������
� �
1__inference_concatenate_18_layer_call_fn_13767119vZ�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "�����������
G__inference_conv2d_60_layer_call_and_return_conditional_losses_13767975l]^7�4
-�*
(�%
inputs���������" 
� "-�*
#� 
0���������
� �
,__inference_conv2d_60_layer_call_fn_13767964_]^7�4
-�*
(�%
inputs���������" 
� " �����������
G__inference_conv2d_61_layer_call_and_return_conditional_losses_13767995l_`7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������	
� �
,__inference_conv2d_61_layer_call_fn_13767984__`7�4
-�*
(�%
inputs���������
� " ����������	�
G__inference_conv2d_62_layer_call_and_return_conditional_losses_13768015lab7�4
-�*
(�%
inputs���������	
� "-�*
#� 
0���������
� �
,__inference_conv2d_62_layer_call_fn_13768004_ab7�4
-�*
(�%
inputs���������	
� " �����������
G__inference_dense_240_layer_call_and_return_conditional_losses_13768512\op/�,
%�"
 �
inputs���������
� "%�"
�
0���������@
� 
,__inference_dense_240_layer_call_fn_13768501Oop/�,
%�"
 �
inputs���������
� "����������@�
G__inference_dense_241_layer_call_and_return_conditional_losses_13768532]qr/�,
%�"
 �
inputs���������@
� "&�#
�
0����������
� �
,__inference_dense_241_layer_call_fn_13768521Pqr/�,
%�"
 �
inputs���������@
� "������������
G__inference_dense_242_layer_call_and_return_conditional_losses_13768552^st0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
,__inference_dense_242_layer_call_fn_13768541Qst0�-
&�#
!�
inputs����������
� "������������
G__inference_dense_243_layer_call_and_return_conditional_losses_13768572^uv0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
,__inference_dense_243_layer_call_fn_13768561Quv0�-
&�#
!�
inputs����������
� "������������
G__inference_dense_244_layer_call_and_return_conditional_losses_13768592^wx0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
,__inference_dense_244_layer_call_fn_13768581Qwx0�-
&�#
!�
inputs����������
� "������������
G__inference_dense_245_layer_call_and_return_conditional_losses_13768611^yz0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
,__inference_dense_245_layer_call_fn_13768601Qyz0�-
&�#
!�
inputs����������
� "������������
G__inference_dense_248_layer_call_and_return_conditional_losses_13768413]ef/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� �
,__inference_dense_248_layer_call_fn_13768402Pef/�,
%�"
 �
inputs���������
� "������������
G__inference_dense_249_layer_call_and_return_conditional_losses_13768433^gh0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
,__inference_dense_249_layer_call_fn_13768422Qgh0�-
&�#
!�
inputs����������
� "������������
G__inference_dense_250_layer_call_and_return_conditional_losses_13768453^ij0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
,__inference_dense_250_layer_call_fn_13768442Qij0�-
&�#
!�
inputs����������
� "������������
G__inference_dense_251_layer_call_and_return_conditional_losses_13768473]kl0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� �
,__inference_dense_251_layer_call_fn_13768462Pkl0�-
&�#
!�
inputs����������
� "����������@�
H__inference_flatten_20_layer_call_and_return_conditional_losses_13768026a7�4
-�*
(�%
inputs���������
� "&�#
�
0����������
� �
-__inference_flatten_20_layer_call_fn_13768020T7�4
-�*
(�%
inputs���������
� "������������
E__inference_hr_loss_layer_call_and_return_conditional_losses_13767874�����}
v�s
m�j
1
pred)�&
inputs/pred���������  
5
true-�*
inputs/true���������  
`
� "7�4
�
0���������  
�
�	
1/0 �
*__inference_hr_loss_layer_call_fn_13767821�����}
v�s
m�j
1
pred)�&
inputs/pred���������  
5
true-�*
inputs/true���������  
`
� "����������  �
F__inference_model_34_layer_call_and_return_conditional_losses_13763631u]^_`abcdB�?
8�5
+�(
	input_154���������  
p 

 
� "%�"
�
0���������
� �
F__inference_model_34_layer_call_and_return_conditional_losses_13763657u]^_`abcdB�?
8�5
+�(
	input_154���������  
p

 
� "%�"
�
0���������
� �
F__inference_model_34_layer_call_and_return_conditional_losses_13767078r]^_`abcd?�<
5�2
(�%
inputs���������  
p 

 
� "%�"
�
0���������
� �
F__inference_model_34_layer_call_and_return_conditional_losses_13767113r]^_`abcd?�<
5�2
(�%
inputs���������  
p

 
� "%�"
�
0���������
� �
+__inference_model_34_layer_call_fn_13763470h]^_`abcdB�?
8�5
+�(
	input_154���������  
p 

 
� "�����������
+__inference_model_34_layer_call_fn_13763605h]^_`abcdB�?
8�5
+�(
	input_154���������  
p

 
� "�����������
+__inference_model_34_layer_call_fn_13767022e]^_`abcd?�<
5�2
(�%
inputs���������  
p 

 
� "�����������
+__inference_model_34_layer_call_fn_13767043e]^_`abcd?�<
5�2
(�%
inputs���������  
p

 
� "�����������
F__inference_model_35_layer_call_and_return_conditional_losses_13765719�.]^_`abcdopqrstuvwxyzefghijklmn�����������
���
z�w
+�(
	input_158���������  
#� 
	input_159���������
#� 
	input_160���������
p 

 
� "���
S�P
�
0/0���������
!�
0/1���������  
�	
0/2 
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
F__inference_model_35_layer_call_and_return_conditional_losses_13765830�2]^_`abcd��opqrstuvwxyzefghijklmn�����������
���
z�w
+�(
	input_158���������  
#� 
	input_159���������
#� 
	input_160���������
p

 
� "���
S�P
�
0/0���������
!�
0/1���������  
�	
0/2 
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
F__inference_model_35_layer_call_and_return_conditional_losses_13766401�.]^_`abcdopqrstuvwxyzefghijklmn�����������
���
w�t
*�'
inputs/0���������  
"�
inputs/1���������
"�
inputs/2���������
p 

 
� "���
S�P
�
0/0���������
!�
0/1���������  
�	
0/2 
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
F__inference_model_35_layer_call_and_return_conditional_losses_13767001�2]^_`abcd��opqrstuvwxyzefghijklmn�����������
���
w�t
*�'
inputs/0���������  
"�
inputs/1���������
"�
inputs/2���������
p

 
� "���
S�P
�
0/0���������
!�
0/1���������  
�	
0/2 
-�*
�	
1/0 
�	
1/1 
�	
1/2 �
+__inference_model_35_layer_call_fn_13765176�.]^_`abcdopqrstuvwxyzefghijklmn�����������
���
z�w
+�(
	input_158���������  
#� 
	input_159���������
#� 
	input_160���������
p 

 
� "M�J
�
0���������
�
1���������  

�
2 �
+__inference_model_35_layer_call_fn_13765612�2]^_`abcd��opqrstuvwxyzefghijklmn�����������
���
z�w
+�(
	input_158���������  
#� 
	input_159���������
#� 
	input_160���������
p

 
� "M�J
�
0���������
�
1���������  

�
2 �
+__inference_model_35_layer_call_fn_13766015�.]^_`abcdopqrstuvwxyzefghijklmn�����������
���
w�t
*�'
inputs/0���������  
"�
inputs/1���������
"�
inputs/2���������
p 

 
� "M�J
�
0���������
�
1���������  

�
2 �
+__inference_model_35_layer_call_fn_13766109�2]^_`abcd��opqrstuvwxyzefghijklmn�����������
���
w�t
*�'
inputs/0���������  
"�
inputs/1���������
"�
inputs/2���������
p

 
� "M�J
�
0���������
�
1���������  

�
2 �
D__inference_precip_layer_call_and_return_conditional_losses_13764369o
efghijklmn:�7
0�-
#� 
	input_157���������
p 

 
� "%�"
�
0���������
� �
D__inference_precip_layer_call_and_return_conditional_losses_13764398o
efghijklmn:�7
0�-
#� 
	input_157���������
p

 
� "%�"
�
0���������
� �
D__inference_precip_layer_call_and_return_conditional_losses_13767544l
efghijklmn7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
D__inference_precip_layer_call_and_return_conditional_losses_13767582l
efghijklmn7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
D__inference_precip_layer_call_and_return_conditional_losses_13768492\mn/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� �
)__inference_precip_layer_call_fn_13764186b
efghijklmn:�7
0�-
#� 
	input_157���������
p 

 
� "�����������
)__inference_precip_layer_call_fn_13764340b
efghijklmn:�7
0�-
#� 
	input_157���������
p

 
� "�����������
)__inference_precip_layer_call_fn_13767481_
efghijklmn7�4
-�*
 �
inputs���������
p 

 
� "�����������
)__inference_precip_layer_call_fn_13767506_
efghijklmn7�4
-�*
 �
inputs���������
p

 
� "����������|
)__inference_precip_layer_call_fn_13768482Omn/�,
%�"
 �
inputs���������@
� "�����������
I__inference_precip_loss_layer_call_and_return_conditional_losses_13767810���{�x
q�n
a�^
-
pred%�"
inputs/pred���������
-
true%�"
inputs/true���������
	Y�������?
� "3�0
�
0���������
�
�	
1/0 �
.__inference_precip_loss_layer_call_fn_13767759���{�x
q�n
a�^
-
pred%�"
inputs/pred���������
-
true%�"
inputs/true���������
	Y�������?
� "�����������
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768061l;�8
1�.
(�%
inputs���������  
p 
� "-�*
#� 
0���������  
� �
L__inference_random_flip_40_layer_call_and_return_conditional_losses_13768219p�;�8
1�.
(�%
inputs���������  
p
� "-�*
#� 
0���������  
� �
1__inference_random_flip_40_layer_call_fn_13768050_;�8
1�.
(�%
inputs���������  
p 
� " ����������  �
1__inference_random_flip_40_layer_call_fn_13768057c�;�8
1�.
(�%
inputs���������  
p
� " ����������  �
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768235l;�8
1�.
(�%
inputs���������  
p 
� "-�*
#� 
0���������  
� �
L__inference_random_flip_41_layer_call_and_return_conditional_losses_13768393p�;�8
1�.
(�%
inputs���������  
p
� "-�*
#� 
0���������  
� �
1__inference_random_flip_41_layer_call_fn_13768224_;�8
1�.
(�%
inputs���������  
p 
� " ����������  �
1__inference_random_flip_41_layer_call_fn_13768231c�;�8
1�.
(�%
inputs���������  
p
� " ����������  �
E__inference_reconst_layer_call_and_return_conditional_losses_13764772uopqrstuvwxyz:�7
0�-
#� 
	input_155���������
p 

 
� ")�&
�
0���������  
� �
E__inference_reconst_layer_call_and_return_conditional_losses_13764807uopqrstuvwxyz:�7
0�-
#� 
	input_155���������
p

 
� ")�&
�
0���������  
� �
E__inference_reconst_layer_call_and_return_conditional_losses_13767694ropqrstuvwxyz7�4
-�*
 �
inputs���������
p 

 
� ")�&
�
0���������  
� �
E__inference_reconst_layer_call_and_return_conditional_losses_13767748ropqrstuvwxyz7�4
-�*
 �
inputs���������
p

 
� ")�&
�
0���������  
� �
*__inference_reconst_layer_call_fn_13764549hopqrstuvwxyz:�7
0�-
#� 
	input_155���������
p 

 
� "����������  �
*__inference_reconst_layer_call_fn_13764737hopqrstuvwxyz:�7
0�-
#� 
	input_155���������
p

 
� "����������  �
*__inference_reconst_layer_call_fn_13767611eopqrstuvwxyz7�4
-�*
 �
inputs���������
p 

 
� "����������  �
*__inference_reconst_layer_call_fn_13767640eopqrstuvwxyz7�4
-�*
 �
inputs���������
p

 
� "����������  �
J__inference_rotationloss_layer_call_and_return_conditional_losses_13767944�����t�q
j�g
a�^
-
pred%�"
inputs/pred���������
-
true%�"
inputs/true���������
`
� ""�

�
0 
�
�	
1/0 �
/__inference_rotationloss_layer_call_fn_13767889�����t�q
j�g
a�^
-
pred%�"
inputs/pred���������
-
true%�"
inputs/true���������
`
� "� �
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764061~M�J
C�@
6�3
random_flip_40_input���������  
p 

 
� "-�*
#� 
0���������  
� �
K__inference_sequential_20_layer_call_and_return_conditional_losses_13764071���M�J
C�@
6�3
random_flip_40_input���������  
p

 
� "-�*
#� 
0���������  
� �
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767144p?�<
5�2
(�%
inputs���������  
p 

 
� "-�*
#� 
0���������  
� �
K__inference_sequential_20_layer_call_and_return_conditional_losses_13767456v��?�<
5�2
(�%
inputs���������  
p

 
� "-�*
#� 
0���������  
� �
0__inference_sequential_20_layer_call_fn_13763680qM�J
C�@
6�3
random_flip_40_input���������  
p 

 
� " ����������  �
0__inference_sequential_20_layer_call_fn_13764055w��M�J
C�@
6�3
random_flip_40_input���������  
p

 
� " ����������  �
0__inference_sequential_20_layer_call_fn_13767131c?�<
5�2
(�%
inputs���������  
p 

 
� " ����������  �
0__inference_sequential_20_layer_call_fn_13767140i��?�<
5�2
(�%
inputs���������  
p

 
� " ����������  �
&__inference_signature_wrapper_13765925�.]^_`abcdopqrstuvwxyzefghijklmn�����������
� 
���
8
	input_158+�(
	input_158���������  
0
	input_159#� 
	input_159���������
0
	input_160#� 
	input_160���������"���
0
hr_loss%�"
hr_loss���������  
4
precip_loss%�"
precip_loss���������
%
rotationloss�
rotationloss �
C__inference_xmean_layer_call_and_return_conditional_losses_13768045]cd0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� |
(__inference_xmean_layer_call_fn_13768035Pcd0�-
&�#
!�
inputs����������
� "�����������
O__inference_zero_padding2d_20_layer_call_and_return_conditional_losses_13767955�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
4__inference_zero_padding2d_20_layer_call_fn_13767949�R�O
H�E
C�@
inputs4������������������������������������
� ";�84������������������������������������