яз
Е■
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
Џ
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.9.12v2.9.0-18-gd8ce9f9c3018│┬
l

xmean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
xmean/bias
e
xmean/bias/Read/ReadVariableOpReadVariableOp
xmean/bias*
_output_shapes
:*
dtype0
u
xmean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	а*
shared_namexmean/kernel
n
 xmean/kernel/Read/ReadVariableOpReadVariableOpxmean/kernel*
_output_shapes
:	а*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
ѓ
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
ы(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*г(
valueб(BЪ( Bў(
ђ
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
╚
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op*
╚
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
ј
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
д
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias*
<
0
1
%2
&3
.4
/5
=6
>7*
<
0
1
%2
&3
.4
/5
=6
>7*
* 
░
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_3* 
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
* 

Lserving_default* 
* 
* 
* 
Љ
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Rtrace_0* 

Strace_0* 

0
1*

0
1*
* 
Њ
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ytrace_0* 

Ztrace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

%0
&1*

%0
&1*
* 
Њ
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

`trace_0* 

atrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

.0
/1*

.0
/1*
* 
Њ
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Љ
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

ntrace_0* 

otrace_0* 

=0
>1*

=0
>1*
* 
Њ
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

utrace_0* 

vtrace_0* 
\V
VARIABLE_VALUExmean/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
xmean/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
і
serving_default_input_8Placeholder*/
_output_shapes
:           *
dtype0*$
shape:           
й
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8conv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasxmean/kernel
xmean/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_1592832
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp xmean/kernel/Read/ReadVariableOpxmean/bias/Read/ReadVariableOpConst*
Tin
2
*
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_1593092
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasxmean/kernel
xmean/bias*
Tin
2	*
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_1593126к§
Љ$
ў
#__inference__traced_restore_1593126
file_prefix:
 assignvariableop_conv2d_3_kernel:.
 assignvariableop_1_conv2d_3_bias:<
"assignvariableop_2_conv2d_4_kernel:.
 assignvariableop_3_conv2d_4_bias:<
"assignvariableop_4_conv2d_5_kernel:.
 assignvariableop_5_conv2d_5_bias:2
assignvariableop_6_xmean_kernel:	а+
assignvariableop_7_xmean_bias:

identity_9ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7┼
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*в
valueрBя	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHѓ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B ╦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_conv2d_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_6AssignVariableOpassignvariableop_6_xmean_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_7AssignVariableOpassignvariableop_7_xmean_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ђ

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: Ь
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ё
■
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1593015

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
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
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         	
 
_user_specified_nameinputs
╚
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1592584

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    а   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         аY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         а"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ё
■
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592975

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
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
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         " : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         " 
 
_user_specified_nameinputs
─	
╬
%__inference_signature_wrapper_1592832
input_8!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	а
	unknown_6:
identityѕбStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_1592506o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_8
у	
Л
)__inference_model_2_layer_call_fn_1592853

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	а
	unknown_6:
identityѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1592603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
┴
Ћ
'__inference_xmean_layer_call_fn_1593035

inputs
unknown:	а
	unknown_0:
identityѕбStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_1592596o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
│
G
+__inference_flatten_1_layer_call_fn_1593020

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1592584a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         а"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
в
i
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592516

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
6:4                                    w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ь
Ј
D__inference_model_2_layer_call_and_return_conditional_losses_1592603

inputs*
conv2d_3_1592539:
conv2d_3_1592541:*
conv2d_4_1592556:
conv2d_4_1592558:*
conv2d_5_1592573:
conv2d_5_1592575: 
xmean_1592597:	а
xmean_1592599:
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбxmean/StatefulPartitionedCallЛ
 zero_padding2d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         " * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592516ъ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv2d_3_1592539conv2d_3_1592541*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592538ъ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_1592556conv2d_4_1592558*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592555ъ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_1592573conv2d_5_1592575*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1592572▀
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1592584Ѓ
xmean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0xmean_1592597xmean_1592599*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_1592596u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╔	
З
B__inference_xmean_layer_call_and_return_conditional_losses_1593045

inputs1
matmul_readvariableop_resource:	а-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
ё
■
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592538

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
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
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         " : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         " 
 
_user_specified_nameinputs
Х)
╚
D__inference_model_2_layer_call_and_return_conditional_losses_1592944

inputsA
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:A
'conv2d_5_conv2d_readvariableop_resource:6
(conv2d_5_biasadd_readvariableop_resource:7
$xmean_matmul_readvariableop_resource:	а3
%xmean_biasadd_readvariableop_resource:
identityѕбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбxmean/BiasAdd/ReadVariableOpбxmean/MatMul/ReadVariableOpј
zero_padding2d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               Ё
zero_padding2d_1/PadPadinputs&zero_padding2d_1/Pad/paddings:output:0*
T0*/
_output_shapes
:         " ј
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┬
conv2d_3/Conv2DConv2Dzero_padding2d_1/Pad:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ё
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         ј
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0└
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	*
paddingSAME*
strides
ё
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         	ј
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0└
conv2d_5/Conv2DConv2Dconv2d_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ё
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    а   є
flatten_1/ReshapeReshapeconv2d_5/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         аЂ
xmean/MatMul/ReadVariableOpReadVariableOp$xmean_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Ѕ
xmean/MatMulMatMulflatten_1/Reshape:output:0#xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
xmean/BiasAdd/ReadVariableOpReadVariableOp%xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
xmean/BiasAddBiasAddxmean/MatMul:product:0$xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         e
IdentityIdentityxmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^xmean/BiasAdd/ReadVariableOp^xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
xmean/BiasAdd/ReadVariableOpxmean/BiasAdd/ReadVariableOp2:
xmean/MatMul/ReadVariableOpxmean/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
ѕ/
Д
"__inference__wrapped_model_1592506
input_8I
/model_2_conv2d_3_conv2d_readvariableop_resource:>
0model_2_conv2d_3_biasadd_readvariableop_resource:I
/model_2_conv2d_4_conv2d_readvariableop_resource:>
0model_2_conv2d_4_biasadd_readvariableop_resource:I
/model_2_conv2d_5_conv2d_readvariableop_resource:>
0model_2_conv2d_5_biasadd_readvariableop_resource:?
,model_2_xmean_matmul_readvariableop_resource:	а;
-model_2_xmean_biasadd_readvariableop_resource:
identityѕб'model_2/conv2d_3/BiasAdd/ReadVariableOpб&model_2/conv2d_3/Conv2D/ReadVariableOpб'model_2/conv2d_4/BiasAdd/ReadVariableOpб&model_2/conv2d_4/Conv2D/ReadVariableOpб'model_2/conv2d_5/BiasAdd/ReadVariableOpб&model_2/conv2d_5/Conv2D/ReadVariableOpб$model_2/xmean/BiasAdd/ReadVariableOpб#model_2/xmean/MatMul/ReadVariableOpќ
%model_2/zero_padding2d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ќ
model_2/zero_padding2d_1/PadPadinput_8.model_2/zero_padding2d_1/Pad/paddings:output:0*
T0*/
_output_shapes
:         " ъ
&model_2/conv2d_3/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┌
model_2/conv2d_3/Conv2DConv2D%model_2/zero_padding2d_1/Pad:output:0.model_2/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ћ
'model_2/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0░
model_2/conv2d_3/BiasAddBiasAdd model_2/conv2d_3/Conv2D:output:0/model_2/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         z
model_2/conv2d_3/ReluRelu!model_2/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         ъ
&model_2/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0п
model_2/conv2d_4/Conv2DConv2D#model_2/conv2d_3/Relu:activations:0.model_2/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	*
paddingSAME*
strides
ћ
'model_2/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0░
model_2/conv2d_4/BiasAddBiasAdd model_2/conv2d_4/Conv2D:output:0/model_2/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	z
model_2/conv2d_4/ReluRelu!model_2/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         	ъ
&model_2/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/model_2_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0п
model_2/conv2d_5/Conv2DConv2D#model_2/conv2d_4/Relu:activations:0.model_2/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ћ
'model_2/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0░
model_2/conv2d_5/BiasAddBiasAdd model_2/conv2d_5/Conv2D:output:0/model_2/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         z
model_2/conv2d_5/ReluRelu!model_2/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         h
model_2/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    а   ъ
model_2/flatten_1/ReshapeReshape#model_2/conv2d_5/Relu:activations:0 model_2/flatten_1/Const:output:0*
T0*(
_output_shapes
:         аЉ
#model_2/xmean/MatMul/ReadVariableOpReadVariableOp,model_2_xmean_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0А
model_2/xmean/MatMulMatMul"model_2/flatten_1/Reshape:output:0+model_2/xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ј
$model_2/xmean/BiasAdd/ReadVariableOpReadVariableOp-model_2_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
model_2/xmean/BiasAddBiasAddmodel_2/xmean/MatMul:product:0,model_2/xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         m
IdentityIdentitymodel_2/xmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ї
NoOpNoOp(^model_2/conv2d_3/BiasAdd/ReadVariableOp'^model_2/conv2d_3/Conv2D/ReadVariableOp(^model_2/conv2d_4/BiasAdd/ReadVariableOp'^model_2/conv2d_4/Conv2D/ReadVariableOp(^model_2/conv2d_5/BiasAdd/ReadVariableOp'^model_2/conv2d_5/Conv2D/ReadVariableOp%^model_2/xmean/BiasAdd/ReadVariableOp$^model_2/xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2R
'model_2/conv2d_3/BiasAdd/ReadVariableOp'model_2/conv2d_3/BiasAdd/ReadVariableOp2P
&model_2/conv2d_3/Conv2D/ReadVariableOp&model_2/conv2d_3/Conv2D/ReadVariableOp2R
'model_2/conv2d_4/BiasAdd/ReadVariableOp'model_2/conv2d_4/BiasAdd/ReadVariableOp2P
&model_2/conv2d_4/Conv2D/ReadVariableOp&model_2/conv2d_4/Conv2D/ReadVariableOp2R
'model_2/conv2d_5/BiasAdd/ReadVariableOp'model_2/conv2d_5/BiasAdd/ReadVariableOp2P
&model_2/conv2d_5/Conv2D/ReadVariableOp&model_2/conv2d_5/Conv2D/ReadVariableOp2L
$model_2/xmean/BiasAdd/ReadVariableOp$model_2/xmean/BiasAdd/ReadVariableOp2J
#model_2/xmean/MatMul/ReadVariableOp#model_2/xmean/MatMul/ReadVariableOp:X T
/
_output_shapes
:           
!
_user_specified_name	input_8
ё
■
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1592572

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
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
:         X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         	
 
_user_specified_nameinputs
Ж	
м
)__inference_model_2_layer_call_fn_1592757
input_8!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	а
	unknown_6:
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1592717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_8
ы
љ
D__inference_model_2_layer_call_and_return_conditional_losses_1592783
input_8*
conv2d_3_1592761:
conv2d_3_1592763:*
conv2d_4_1592766:
conv2d_4_1592768:*
conv2d_5_1592771:
conv2d_5_1592773: 
xmean_1592777:	а
xmean_1592779:
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбxmean/StatefulPartitionedCallм
 zero_padding2d_1/PartitionedCallPartitionedCallinput_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         " * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592516ъ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv2d_3_1592761conv2d_3_1592763*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592538ъ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_1592766conv2d_4_1592768*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592555ъ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_1592771conv2d_5_1592773*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1592572▀
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1592584Ѓ
xmean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0xmean_1592777xmean_1592779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_1592596u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_8
В
Ъ
*__inference_conv2d_4_layer_call_fn_1592984

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592555w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ь
Ј
D__inference_model_2_layer_call_and_return_conditional_losses_1592717

inputs*
conv2d_3_1592695:
conv2d_3_1592697:*
conv2d_4_1592700:
conv2d_4_1592702:*
conv2d_5_1592705:
conv2d_5_1592707: 
xmean_1592711:	а
xmean_1592713:
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбxmean/StatefulPartitionedCallЛ
 zero_padding2d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         " * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592516ъ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv2d_3_1592695conv2d_3_1592697*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592538ъ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_1592700conv2d_4_1592702*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592555ъ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_1592705conv2d_5_1592707*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1592572▀
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1592584Ѓ
xmean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0xmean_1592711xmean_1592713*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_1592596u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
В
Ъ
*__inference_conv2d_3_layer_call_fn_1592964

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592538w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         " : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         " 
 
_user_specified_nameinputs
ё
■
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592995

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	*
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
:         	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╣
▀
 __inference__traced_save_1593092
file_prefix.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop+
'savev2_xmean_kernel_read_readvariableop)
%savev2_xmean_bias_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ┬
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*в
valueрBя	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B і
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop'savev2_xmean_kernel_read_readvariableop%savev2_xmean_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*p
_input_shapes_
]: :::::::	а:: 2(
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
:	а: 

_output_shapes
::	

_output_shapes
: 
╔	
З
B__inference_xmean_layer_call_and_return_conditional_losses_1592596

inputs1
matmul_readvariableop_resource:	а-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
у	
Л
)__inference_model_2_layer_call_fn_1592874

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	а
	unknown_6:
identityѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1592717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
Ж	
м
)__inference_model_2_layer_call_fn_1592622
input_8!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	а
	unknown_6:
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1592603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_8
в
i
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592955

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
6:4                                    w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ы
љ
D__inference_model_2_layer_call_and_return_conditional_losses_1592809
input_8*
conv2d_3_1592787:
conv2d_3_1592789:*
conv2d_4_1592792:
conv2d_4_1592794:*
conv2d_5_1592797:
conv2d_5_1592799: 
xmean_1592803:	а
xmean_1592805:
identityѕб conv2d_3/StatefulPartitionedCallб conv2d_4/StatefulPartitionedCallб conv2d_5/StatefulPartitionedCallбxmean/StatefulPartitionedCallм
 zero_padding2d_1/PartitionedCallPartitionedCallinput_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         " * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592516ъ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv2d_3_1592787conv2d_3_1592789*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592538ъ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_1592792conv2d_4_1592794*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592555ъ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_1592797conv2d_5_1592799*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1592572▀
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_1592584Ѓ
xmean/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0xmean_1592803xmean_1592805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_1592596u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:X T
/
_output_shapes
:           
!
_user_specified_name	input_8
ё
■
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592555

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	*
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
:         	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╚
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_1593026

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    а   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         аY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         а"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
В
Ъ
*__inference_conv2d_5_layer_call_fn_1593004

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1592572w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         	: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         	
 
_user_specified_nameinputs
Х)
╚
D__inference_model_2_layer_call_and_return_conditional_losses_1592909

inputsA
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:A
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:A
'conv2d_5_conv2d_readvariableop_resource:6
(conv2d_5_biasadd_readvariableop_resource:7
$xmean_matmul_readvariableop_resource:	а3
%xmean_biasadd_readvariableop_resource:
identityѕбconv2d_3/BiasAdd/ReadVariableOpбconv2d_3/Conv2D/ReadVariableOpбconv2d_4/BiasAdd/ReadVariableOpбconv2d_4/Conv2D/ReadVariableOpбconv2d_5/BiasAdd/ReadVariableOpбconv2d_5/Conv2D/ReadVariableOpбxmean/BiasAdd/ReadVariableOpбxmean/MatMul/ReadVariableOpј
zero_padding2d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               Ё
zero_padding2d_1/PadPadinputs&zero_padding2d_1/Pad/paddings:output:0*
T0*/
_output_shapes
:         " ј
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0┬
conv2d_3/Conv2DConv2Dzero_padding2d_1/Pad:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ё
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         ј
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0└
conv2d_4/Conv2DConv2Dconv2d_3/Relu:activations:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	*
paddingSAME*
strides
ё
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         	j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         	ј
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0└
conv2d_5/Conv2DConv2Dconv2d_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
ё
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ў
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    а   є
flatten_1/ReshapeReshapeconv2d_5/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         аЂ
xmean/MatMul/ReadVariableOpReadVariableOp$xmean_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype0Ѕ
xmean/MatMulMatMulflatten_1/Reshape:output:0#xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
xmean/BiasAdd/ReadVariableOpReadVariableOp%xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ѕ
xmean/BiasAddBiasAddxmean/MatMul:product:0$xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         e
IdentityIdentityxmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^xmean/BiasAdd/ReadVariableOp^xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:           : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2<
xmean/BiasAdd/ReadVariableOpxmean/BiasAdd/ReadVariableOp2:
xmean/MatMul/ReadVariableOpxmean/MatMul/ReadVariableOp:W S
/
_output_shapes
:           
 
_user_specified_nameinputs
╝
N
2__inference_zero_padding2d_1_layer_call_fn_1592949

inputs
identity█
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592516Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*░
serving_defaultю
C
input_88
serving_default_input_8:0           9
xmean0
StatefulPartitionedCall:0         tensorflow/serving/predict:ЋЮ
Ќ
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
П
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op"
_tf_keras_layer
П
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
Ц
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias"
_tf_keras_layer
X
0
1
%2
&3
.4
/5
=6
>7"
trackable_list_wrapper
X
0
1
%2
&3
.4
/5
=6
>7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┌
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32№
)__inference_model_2_layer_call_fn_1592622
)__inference_model_2_layer_call_fn_1592853
)__inference_model_2_layer_call_fn_1592874
)__inference_model_2_layer_call_fn_1592757└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
к
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32█
D__inference_model_2_layer_call_and_return_conditional_losses_1592909
D__inference_model_2_layer_call_and_return_conditional_losses_1592944
D__inference_model_2_layer_call_and_return_conditional_losses_1592783
D__inference_model_2_layer_call_and_return_conditional_losses_1592809└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
═B╩
"__inference__wrapped_model_1592506input_8"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
,
Lserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ш
Rtrace_02┘
2__inference_zero_padding2d_1_layer_call_fn_1592949б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zRtrace_0
Љ
Strace_02З
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592955б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zStrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ь
Ytrace_02Л
*__inference_conv2d_3_layer_call_fn_1592964б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zYtrace_0
Ѕ
Ztrace_02В
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592975б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zZtrace_0
):'2conv2d_3/kernel
:2conv2d_3/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ь
`trace_02Л
*__inference_conv2d_4_layer_call_fn_1592984б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z`trace_0
Ѕ
atrace_02В
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592995б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zatrace_0
):'2conv2d_4/kernel
:2conv2d_4/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Ь
gtrace_02Л
*__inference_conv2d_5_layer_call_fn_1593004б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zgtrace_0
Ѕ
htrace_02В
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1593015б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zhtrace_0
):'2conv2d_5/kernel
:2conv2d_5/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
№
ntrace_02м
+__inference_flatten_1_layer_call_fn_1593020б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zntrace_0
і
otrace_02ь
F__inference_flatten_1_layer_call_and_return_conditional_losses_1593026б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zotrace_0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
в
utrace_02╬
'__inference_xmean_layer_call_fn_1593035б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zutrace_0
є
vtrace_02ж
B__inference_xmean_layer_call_and_return_conditional_losses_1593045б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zvtrace_0
:	а2xmean/kernel
:2
xmean/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЧBщ
)__inference_model_2_layer_call_fn_1592622input_8"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
чBЭ
)__inference_model_2_layer_call_fn_1592853inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
чBЭ
)__inference_model_2_layer_call_fn_1592874inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЧBщ
)__inference_model_2_layer_call_fn_1592757input_8"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ќBЊ
D__inference_model_2_layer_call_and_return_conditional_losses_1592909inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ќBЊ
D__inference_model_2_layer_call_and_return_conditional_losses_1592944inputs"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
D__inference_model_2_layer_call_and_return_conditional_losses_1592783input_8"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ЌBћ
D__inference_model_2_layer_call_and_return_conditional_losses_1592809input_8"└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╠B╔
%__inference_signature_wrapper_1592832input_8"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ТBс
2__inference_zero_padding2d_1_layer_call_fn_1592949inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЂB■
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592955inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
яB█
*__inference_conv2d_3_layer_call_fn_1592964inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
щBШ
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592975inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
яB█
*__inference_conv2d_4_layer_call_fn_1592984inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
щBШ
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592995inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
яB█
*__inference_conv2d_5_layer_call_fn_1593004inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
щBШ
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1593015inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
▀B▄
+__inference_flatten_1_layer_call_fn_1593020inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЩBэ
F__inference_flatten_1_layer_call_and_return_conditional_losses_1593026inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
█Bп
'__inference_xmean_layer_call_fn_1593035inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
B__inference_xmean_layer_call_and_return_conditional_losses_1593045inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 Ў
"__inference__wrapped_model_1592506s%&./=>8б5
.б+
)і&
input_8           
ф "-ф*
(
xmeanі
xmean         х
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1592975l7б4
-б*
(і%
inputs         " 
ф "-б*
#і 
0         
џ Ї
*__inference_conv2d_3_layer_call_fn_1592964_7б4
-б*
(і%
inputs         " 
ф " і         х
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1592995l%&7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         	
џ Ї
*__inference_conv2d_4_layer_call_fn_1592984_%&7б4
-б*
(і%
inputs         
ф " і         	х
E__inference_conv2d_5_layer_call_and_return_conditional_losses_1593015l./7б4
-б*
(і%
inputs         	
ф "-б*
#і 
0         
џ Ї
*__inference_conv2d_5_layer_call_fn_1593004_./7б4
-б*
(і%
inputs         	
ф " і         Ф
F__inference_flatten_1_layer_call_and_return_conditional_losses_1593026a7б4
-б*
(і%
inputs         
ф "&б#
і
0         а
џ Ѓ
+__inference_flatten_1_layer_call_fn_1593020T7б4
-б*
(і%
inputs         
ф "і         а╗
D__inference_model_2_layer_call_and_return_conditional_losses_1592783s%&./=>@б=
6б3
)і&
input_8           
p 

 
ф "%б"
і
0         
џ ╗
D__inference_model_2_layer_call_and_return_conditional_losses_1592809s%&./=>@б=
6б3
)і&
input_8           
p

 
ф "%б"
і
0         
џ ║
D__inference_model_2_layer_call_and_return_conditional_losses_1592909r%&./=>?б<
5б2
(і%
inputs           
p 

 
ф "%б"
і
0         
џ ║
D__inference_model_2_layer_call_and_return_conditional_losses_1592944r%&./=>?б<
5б2
(і%
inputs           
p

 
ф "%б"
і
0         
џ Њ
)__inference_model_2_layer_call_fn_1592622f%&./=>@б=
6б3
)і&
input_8           
p 

 
ф "і         Њ
)__inference_model_2_layer_call_fn_1592757f%&./=>@б=
6б3
)і&
input_8           
p

 
ф "і         њ
)__inference_model_2_layer_call_fn_1592853e%&./=>?б<
5б2
(і%
inputs           
p 

 
ф "і         њ
)__inference_model_2_layer_call_fn_1592874e%&./=>?б<
5б2
(і%
inputs           
p

 
ф "і         Д
%__inference_signature_wrapper_1592832~%&./=>Cб@
б 
9ф6
4
input_8)і&
input_8           "-ф*
(
xmeanі
xmean         Б
B__inference_xmean_layer_call_and_return_conditional_losses_1593045]=>0б-
&б#
!і
inputs         а
ф "%б"
і
0         
џ {
'__inference_xmean_layer_call_fn_1593035P=>0б-
&б#
!і
inputs         а
ф "і         ­
M__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_1592955ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╚
2__inference_zero_padding2d_1_layer_call_fn_1592949ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    