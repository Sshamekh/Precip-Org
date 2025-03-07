��
��
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
delete_old_dirsbool(�
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
dtypetype�
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
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
shape:	�*
shared_namexmean/kernel
n
 xmean/kernel/Read/ReadVariableOpReadVariableOpxmean/kernel*
_output_shapes
:	�*
dtype0
t
conv2d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
:*
dtype0
�
conv2d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
:*
dtype0
t
conv2d_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_40/bias
m
"conv2d_40/bias/Read/ReadVariableOpReadVariableOpconv2d_40/bias*
_output_shapes
:*
dtype0
�
conv2d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_40/kernel
}
$conv2d_40/kernel/Read/ReadVariableOpReadVariableOpconv2d_40/kernel*&
_output_shapes
:*
dtype0
t
conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_39/bias
m
"conv2d_39/bias/Read/ReadVariableOpReadVariableOpconv2d_39/bias*
_output_shapes
:*
dtype0
�
conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_39/kernel
}
$conv2d_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_39/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
�(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�(
value�(B�( B�(
�
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
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op*
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
�
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
�
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
�
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
�
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
`Z
VARIABLE_VALUEconv2d_39/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_39/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

%0
&1*

%0
&1*
* 
�
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
`Z
VARIABLE_VALUEconv2d_40/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_40/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

.0
/1*

.0
/1*
* 
�
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
`Z
VARIABLE_VALUEconv2d_41/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_41/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
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
�
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
�
serving_default_input_105Placeholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_105conv2d_39/kernelconv2d_39/biasconv2d_40/kernelconv2d_40/biasconv2d_41/kernelconv2d_41/biasxmean/kernel
xmean/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_9013307
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_39/kernel/Read/ReadVariableOp"conv2d_39/bias/Read/ReadVariableOp$conv2d_40/kernel/Read/ReadVariableOp"conv2d_40/bias/Read/ReadVariableOp$conv2d_41/kernel/Read/ReadVariableOp"conv2d_41/bias/Read/ReadVariableOp xmean/kernel/Read/ReadVariableOpxmean/bias/Read/ReadVariableOpConst*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_9013567
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_39/kernelconv2d_39/biasconv2d_40/kernelconv2d_40/biasconv2d_41/kernelconv2d_41/biasxmean/kernel
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_9013601��
�
�
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013450

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
�
�
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013030

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
E__inference_model_22_layer_call_and_return_conditional_losses_9013078

inputs+
conv2d_39_9013014:
conv2d_39_9013016:+
conv2d_40_9013031:
conv2d_40_9013033:+
conv2d_41_9013048:
conv2d_41_9013050: 
xmean_9013072:	�
xmean_9013074:
identity��!conv2d_39/StatefulPartitionedCall�!conv2d_40/StatefulPartitionedCall�!conv2d_41/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_13/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8� *W
fRRP
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9012991�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_13/PartitionedCall:output:0conv2d_39_9013014conv2d_39_9013016*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013013�
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_9013031conv2d_40_9013033*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013030�
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_9013048conv2d_41_9013050*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013047�
flatten_13/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *P
fKRI
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013059�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0xmean_9013072xmean_9013074*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_9013071u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013470

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
�
H
,__inference_flatten_13_layer_call_fn_9013495

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
GPU 2J 8� *P
fKRI
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013059a
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
�
�
 __inference__traced_save_9013567
file_prefix/
+savev2_conv2d_39_kernel_read_readvariableop-
)savev2_conv2d_39_bias_read_readvariableop/
+savev2_conv2d_40_kernel_read_readvariableop-
)savev2_conv2d_40_bias_read_readvariableop/
+savev2_conv2d_41_kernel_read_readvariableop-
)savev2_conv2d_41_bias_read_readvariableop+
'savev2_xmean_kernel_read_readvariableop)
%savev2_xmean_bias_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_39_kernel_read_readvariableop)savev2_conv2d_39_bias_read_readvariableop+savev2_conv2d_40_kernel_read_readvariableop)savev2_conv2d_40_bias_read_readvariableop+savev2_conv2d_41_kernel_read_readvariableop)savev2_conv2d_41_bias_read_readvariableop'savev2_xmean_kernel_read_readvariableop%savev2_xmean_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	�
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

identity_1Identity_1:output:0*p
_input_shapes_
]: :::::::	�:: 2(
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
:	�: 

_output_shapes
::	

_output_shapes
: 
�0
�
"__inference__wrapped_model_9012981
	input_105K
1model_22_conv2d_39_conv2d_readvariableop_resource:@
2model_22_conv2d_39_biasadd_readvariableop_resource:K
1model_22_conv2d_40_conv2d_readvariableop_resource:@
2model_22_conv2d_40_biasadd_readvariableop_resource:K
1model_22_conv2d_41_conv2d_readvariableop_resource:@
2model_22_conv2d_41_biasadd_readvariableop_resource:@
-model_22_xmean_matmul_readvariableop_resource:	�<
.model_22_xmean_biasadd_readvariableop_resource:
identity��)model_22/conv2d_39/BiasAdd/ReadVariableOp�(model_22/conv2d_39/Conv2D/ReadVariableOp�)model_22/conv2d_40/BiasAdd/ReadVariableOp�(model_22/conv2d_40/Conv2D/ReadVariableOp�)model_22/conv2d_41/BiasAdd/ReadVariableOp�(model_22/conv2d_41/Conv2D/ReadVariableOp�%model_22/xmean/BiasAdd/ReadVariableOp�$model_22/xmean/MatMul/ReadVariableOp�
'model_22/zero_padding2d_13/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
model_22/zero_padding2d_13/PadPad	input_1050model_22/zero_padding2d_13/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
(model_22/conv2d_39/Conv2D/ReadVariableOpReadVariableOp1model_22_conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_22/conv2d_39/Conv2DConv2D'model_22/zero_padding2d_13/Pad:output:00model_22/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)model_22/conv2d_39/BiasAdd/ReadVariableOpReadVariableOp2model_22_conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_22/conv2d_39/BiasAddBiasAdd"model_22/conv2d_39/Conv2D:output:01model_22/conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~
model_22/conv2d_39/ReluRelu#model_22/conv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:����������
(model_22/conv2d_40/Conv2D/ReadVariableOpReadVariableOp1model_22_conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_22/conv2d_40/Conv2DConv2D%model_22/conv2d_39/Relu:activations:00model_22/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
)model_22/conv2d_40/BiasAdd/ReadVariableOpReadVariableOp2model_22_conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_22/conv2d_40/BiasAddBiasAdd"model_22/conv2d_40/Conv2D:output:01model_22/conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	~
model_22/conv2d_40/ReluRelu#model_22/conv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
(model_22/conv2d_41/Conv2D/ReadVariableOpReadVariableOp1model_22_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_22/conv2d_41/Conv2DConv2D%model_22/conv2d_40/Relu:activations:00model_22/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
)model_22/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp2model_22_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_22/conv2d_41/BiasAddBiasAdd"model_22/conv2d_41/Conv2D:output:01model_22/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������~
model_22/conv2d_41/ReluRelu#model_22/conv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:���������j
model_22/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
model_22/flatten_13/ReshapeReshape%model_22/conv2d_41/Relu:activations:0"model_22/flatten_13/Const:output:0*
T0*(
_output_shapes
:�����������
$model_22/xmean/MatMul/ReadVariableOpReadVariableOp-model_22_xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_22/xmean/MatMulMatMul$model_22/flatten_13/Reshape:output:0,model_22/xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%model_22/xmean/BiasAdd/ReadVariableOpReadVariableOp.model_22_xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_22/xmean/BiasAddBiasAddmodel_22/xmean/MatMul:product:0-model_22/xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel_22/xmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^model_22/conv2d_39/BiasAdd/ReadVariableOp)^model_22/conv2d_39/Conv2D/ReadVariableOp*^model_22/conv2d_40/BiasAdd/ReadVariableOp)^model_22/conv2d_40/Conv2D/ReadVariableOp*^model_22/conv2d_41/BiasAdd/ReadVariableOp)^model_22/conv2d_41/Conv2D/ReadVariableOp&^model_22/xmean/BiasAdd/ReadVariableOp%^model_22/xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2V
)model_22/conv2d_39/BiasAdd/ReadVariableOp)model_22/conv2d_39/BiasAdd/ReadVariableOp2T
(model_22/conv2d_39/Conv2D/ReadVariableOp(model_22/conv2d_39/Conv2D/ReadVariableOp2V
)model_22/conv2d_40/BiasAdd/ReadVariableOp)model_22/conv2d_40/BiasAdd/ReadVariableOp2T
(model_22/conv2d_40/Conv2D/ReadVariableOp(model_22/conv2d_40/Conv2D/ReadVariableOp2V
)model_22/conv2d_41/BiasAdd/ReadVariableOp)model_22/conv2d_41/BiasAdd/ReadVariableOp2T
(model_22/conv2d_41/Conv2D/ReadVariableOp(model_22/conv2d_41/Conv2D/ReadVariableOp2N
%model_22/xmean/BiasAdd/ReadVariableOp%model_22/xmean/BiasAdd/ReadVariableOp2L
$model_22/xmean/MatMul/ReadVariableOp$model_22/xmean/MatMul/ReadVariableOp:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_105
�	
�
*__inference_model_22_layer_call_fn_9013349

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_9013192o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�
j
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9013430

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
�
j
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9012991

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
�
O
3__inference_zero_padding2d_13_layer_call_fn_9013424

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
GPU 2J 8� *W
fRRP
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9012991�
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
�
c
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013059

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
�	
�
B__inference_xmean_layer_call_and_return_conditional_losses_9013520

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
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
�
�
+__inference_conv2d_41_layer_call_fn_9013479

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
GPU 2J 8� *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013047w
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
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013013

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
+__inference_conv2d_40_layer_call_fn_9013459

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
GPU 2J 8� *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013030w
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
�
�
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013047

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
�	
�
*__inference_model_22_layer_call_fn_9013232
	input_105!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_105unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_9013192o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
_user_specified_name	input_105
�
�
E__inference_model_22_layer_call_and_return_conditional_losses_9013284
	input_105+
conv2d_39_9013262:
conv2d_39_9013264:+
conv2d_40_9013267:
conv2d_40_9013269:+
conv2d_41_9013272:
conv2d_41_9013274: 
xmean_9013278:	�
xmean_9013280:
identity��!conv2d_39/StatefulPartitionedCall�!conv2d_40/StatefulPartitionedCall�!conv2d_41/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_13/PartitionedCallPartitionedCall	input_105*
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
GPU 2J 8� *W
fRRP
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9012991�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_13/PartitionedCall:output:0conv2d_39_9013262conv2d_39_9013264*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013013�
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_9013267conv2d_40_9013269*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013030�
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_9013272conv2d_41_9013274*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013047�
flatten_13/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *P
fKRI
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013059�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0xmean_9013278xmean_9013280*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_9013071u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_105
�
�
'__inference_xmean_layer_call_fn_9013510

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_9013071o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
+__inference_conv2d_39_layer_call_fn_9013439

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
GPU 2J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013013w
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
�*
�
E__inference_model_22_layer_call_and_return_conditional_losses_9013419

inputsB
(conv2d_39_conv2d_readvariableop_resource:7
)conv2d_39_biasadd_readvariableop_resource:B
(conv2d_40_conv2d_readvariableop_resource:7
)conv2d_40_biasadd_readvariableop_resource:B
(conv2d_41_conv2d_readvariableop_resource:7
)conv2d_41_biasadd_readvariableop_resource:7
$xmean_matmul_readvariableop_resource:	�3
%xmean_biasadd_readvariableop_resource:
identity�� conv2d_39/BiasAdd/ReadVariableOp�conv2d_39/Conv2D/ReadVariableOp� conv2d_40/BiasAdd/ReadVariableOp�conv2d_40/Conv2D/ReadVariableOp� conv2d_41/BiasAdd/ReadVariableOp�conv2d_41/Conv2D/ReadVariableOp�xmean/BiasAdd/ReadVariableOp�xmean/MatMul/ReadVariableOp�
zero_padding2d_13/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
zero_padding2d_13/PadPadinputs'zero_padding2d_13/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_39/Conv2DConv2Dzero_padding2d_13/Pad:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_40/Conv2DConv2Dconv2d_39/Relu:activations:0'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	l
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_41/Conv2DConv2Dconv2d_40/Relu:activations:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:���������a
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_13/ReshapeReshapeconv2d_41/Relu:activations:0flatten_13/Const:output:0*
T0*(
_output_shapes
:�����������
xmean/MatMul/ReadVariableOpReadVariableOp$xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
xmean/MatMulMatMulflatten_13/Reshape:output:0#xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
xmean/BiasAdd/ReadVariableOpReadVariableOp%xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
xmean/BiasAddBiasAddxmean/MatMul:product:0$xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
IdentityIdentityxmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp^xmean/BiasAdd/ReadVariableOp^xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2<
xmean/BiasAdd/ReadVariableOpxmean/BiasAdd/ReadVariableOp2:
xmean/MatMul/ReadVariableOpxmean/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�$
�
#__inference__traced_restore_9013601
file_prefix;
!assignvariableop_conv2d_39_kernel:/
!assignvariableop_1_conv2d_39_bias:=
#assignvariableop_2_conv2d_40_kernel:/
!assignvariableop_3_conv2d_40_bias:=
#assignvariableop_4_conv2d_41_kernel:/
!assignvariableop_5_conv2d_41_bias:2
assignvariableop_6_xmean_kernel:	�+
assignvariableop_7_xmean_bias:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_39_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_39_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_40_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_40_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_41_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_41_biasIdentity_5:output:0"/device:CPU:0*
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
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
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
�	
�
*__inference_model_22_layer_call_fn_9013097
	input_105!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_105unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_9013078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
_user_specified_name	input_105
�
�
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013490

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
�
�
E__inference_model_22_layer_call_and_return_conditional_losses_9013258
	input_105+
conv2d_39_9013236:
conv2d_39_9013238:+
conv2d_40_9013241:
conv2d_40_9013243:+
conv2d_41_9013246:
conv2d_41_9013248: 
xmean_9013252:	�
xmean_9013254:
identity��!conv2d_39/StatefulPartitionedCall�!conv2d_40/StatefulPartitionedCall�!conv2d_41/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_13/PartitionedCallPartitionedCall	input_105*
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
GPU 2J 8� *W
fRRP
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9012991�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_13/PartitionedCall:output:0conv2d_39_9013236conv2d_39_9013238*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013013�
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_9013241conv2d_40_9013243*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013030�
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_9013246conv2d_41_9013248*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013047�
flatten_13/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *P
fKRI
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013059�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0xmean_9013252xmean_9013254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_9013071u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:Z V
/
_output_shapes
:���������  
#
_user_specified_name	input_105
�	
�
B__inference_xmean_layer_call_and_return_conditional_losses_9013071

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
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
E__inference_model_22_layer_call_and_return_conditional_losses_9013192

inputs+
conv2d_39_9013170:
conv2d_39_9013172:+
conv2d_40_9013175:
conv2d_40_9013177:+
conv2d_41_9013180:
conv2d_41_9013182: 
xmean_9013186:	�
xmean_9013188:
identity��!conv2d_39/StatefulPartitionedCall�!conv2d_40/StatefulPartitionedCall�!conv2d_41/StatefulPartitionedCall�xmean/StatefulPartitionedCall�
!zero_padding2d_13/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8� *W
fRRP
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9012991�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall*zero_padding2d_13/PartitionedCall:output:0conv2d_39_9013170conv2d_39_9013172*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013013�
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0conv2d_40_9013175conv2d_40_9013177*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013030�
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_9013180conv2d_41_9013182*
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
GPU 2J 8� *O
fJRH
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013047�
flatten_13/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
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
GPU 2J 8� *P
fKRI
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013059�
xmean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0xmean_9013186xmean_9013188*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_xmean_layer_call_and_return_conditional_losses_9013071u
IdentityIdentity&xmean/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall^xmean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2>
xmean/StatefulPartitionedCallxmean/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
*__inference_model_22_layer_call_fn_9013328

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_model_22_layer_call_and_return_conditional_losses_9013078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�
c
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013501

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
�	
�
%__inference_signature_wrapper_9013307
	input_105!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	input_105unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_9012981o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
_user_specified_name	input_105
�*
�
E__inference_model_22_layer_call_and_return_conditional_losses_9013384

inputsB
(conv2d_39_conv2d_readvariableop_resource:7
)conv2d_39_biasadd_readvariableop_resource:B
(conv2d_40_conv2d_readvariableop_resource:7
)conv2d_40_biasadd_readvariableop_resource:B
(conv2d_41_conv2d_readvariableop_resource:7
)conv2d_41_biasadd_readvariableop_resource:7
$xmean_matmul_readvariableop_resource:	�3
%xmean_biasadd_readvariableop_resource:
identity�� conv2d_39/BiasAdd/ReadVariableOp�conv2d_39/Conv2D/ReadVariableOp� conv2d_40/BiasAdd/ReadVariableOp�conv2d_40/Conv2D/ReadVariableOp� conv2d_41/BiasAdd/ReadVariableOp�conv2d_41/Conv2D/ReadVariableOp�xmean/BiasAdd/ReadVariableOp�xmean/MatMul/ReadVariableOp�
zero_padding2d_13/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               �
zero_padding2d_13/PadPadinputs'zero_padding2d_13/Pad/paddings:output:0*
T0*/
_output_shapes
:���������" �
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_39/Conv2DConv2Dzero_padding2d_13/Pad:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_40/Conv2DConv2Dconv2d_39/Relu:activations:0'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	*
paddingSAME*
strides
�
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������	l
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*/
_output_shapes
:���������	�
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_41/Conv2DConv2Dconv2d_40/Relu:activations:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:���������a
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_13/ReshapeReshapeconv2d_41/Relu:activations:0flatten_13/Const:output:0*
T0*(
_output_shapes
:�����������
xmean/MatMul/ReadVariableOpReadVariableOp$xmean_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
xmean/MatMulMatMulflatten_13/Reshape:output:0#xmean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
xmean/BiasAdd/ReadVariableOpReadVariableOp%xmean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
xmean/BiasAddBiasAddxmean/MatMul:product:0$xmean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������e
IdentityIdentityxmean/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp^xmean/BiasAdd/ReadVariableOp^xmean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������  : : : : : : : : 2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2<
xmean/BiasAdd/ReadVariableOpxmean/BiasAdd/ReadVariableOp2:
xmean/MatMul/ReadVariableOpxmean/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
G
	input_105:
serving_default_input_105:0���������  9
xmean0
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
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
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
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
�
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
�
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
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
�
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
�
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
�
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32�
*__inference_model_22_layer_call_fn_9013097
*__inference_model_22_layer_call_fn_9013328
*__inference_model_22_layer_call_fn_9013349
*__inference_model_22_layer_call_fn_9013232�
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
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
�
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32�
E__inference_model_22_layer_call_and_return_conditional_losses_9013384
E__inference_model_22_layer_call_and_return_conditional_losses_9013419
E__inference_model_22_layer_call_and_return_conditional_losses_9013258
E__inference_model_22_layer_call_and_return_conditional_losses_9013284�
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
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
�B�
"__inference__wrapped_model_9012981	input_105"�
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
,
Lserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
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
�
Rtrace_02�
3__inference_zero_padding2d_13_layer_call_fn_9013424�
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
 zRtrace_0
�
Strace_02�
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9013430�
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
�
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
�
Ytrace_02�
+__inference_conv2d_39_layer_call_fn_9013439�
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
 zYtrace_0
�
Ztrace_02�
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013450�
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
 zZtrace_0
*:(2conv2d_39/kernel
:2conv2d_39/bias
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
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
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
�
`trace_02�
+__inference_conv2d_40_layer_call_fn_9013459�
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
 z`trace_0
�
atrace_02�
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013470�
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
 zatrace_0
*:(2conv2d_40/kernel
:2conv2d_40/bias
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
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
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
�
gtrace_02�
+__inference_conv2d_41_layer_call_fn_9013479�
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
 zgtrace_0
�
htrace_02�
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013490�
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
 zhtrace_0
*:(2conv2d_41/kernel
:2conv2d_41/bias
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
�
ntrace_02�
,__inference_flatten_13_layer_call_fn_9013495�
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
 zntrace_0
�
otrace_02�
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013501�
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
�
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
�
utrace_02�
'__inference_xmean_layer_call_fn_9013510�
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
 zutrace_0
�
vtrace_02�
B__inference_xmean_layer_call_and_return_conditional_losses_9013520�
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
 zvtrace_0
:	�2xmean/kernel
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
�B�
*__inference_model_22_layer_call_fn_9013097	input_105"�
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
*__inference_model_22_layer_call_fn_9013328inputs"�
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
*__inference_model_22_layer_call_fn_9013349inputs"�
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
*__inference_model_22_layer_call_fn_9013232	input_105"�
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
E__inference_model_22_layer_call_and_return_conditional_losses_9013384inputs"�
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
E__inference_model_22_layer_call_and_return_conditional_losses_9013419inputs"�
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
E__inference_model_22_layer_call_and_return_conditional_losses_9013258	input_105"�
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
E__inference_model_22_layer_call_and_return_conditional_losses_9013284	input_105"�
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
%__inference_signature_wrapper_9013307	input_105"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_zero_padding2d_13_layer_call_fn_9013424inputs"�
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
�B�
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9013430inputs"�
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
+__inference_conv2d_39_layer_call_fn_9013439inputs"�
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
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013450inputs"�
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
+__inference_conv2d_40_layer_call_fn_9013459inputs"�
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
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013470inputs"�
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
+__inference_conv2d_41_layer_call_fn_9013479inputs"�
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
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013490inputs"�
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
,__inference_flatten_13_layer_call_fn_9013495inputs"�
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
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013501inputs"�
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
'__inference_xmean_layer_call_fn_9013510inputs"�
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
B__inference_xmean_layer_call_and_return_conditional_losses_9013520inputs"�
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
 �
"__inference__wrapped_model_9012981u%&./=>:�7
0�-
+�(
	input_105���������  
� "-�*
(
xmean�
xmean����������
F__inference_conv2d_39_layer_call_and_return_conditional_losses_9013450l7�4
-�*
(�%
inputs���������" 
� "-�*
#� 
0���������
� �
+__inference_conv2d_39_layer_call_fn_9013439_7�4
-�*
(�%
inputs���������" 
� " �����������
F__inference_conv2d_40_layer_call_and_return_conditional_losses_9013470l%&7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������	
� �
+__inference_conv2d_40_layer_call_fn_9013459_%&7�4
-�*
(�%
inputs���������
� " ����������	�
F__inference_conv2d_41_layer_call_and_return_conditional_losses_9013490l./7�4
-�*
(�%
inputs���������	
� "-�*
#� 
0���������
� �
+__inference_conv2d_41_layer_call_fn_9013479_./7�4
-�*
(�%
inputs���������	
� " �����������
G__inference_flatten_13_layer_call_and_return_conditional_losses_9013501a7�4
-�*
(�%
inputs���������
� "&�#
�
0����������
� �
,__inference_flatten_13_layer_call_fn_9013495T7�4
-�*
(�%
inputs���������
� "������������
E__inference_model_22_layer_call_and_return_conditional_losses_9013258u%&./=>B�?
8�5
+�(
	input_105���������  
p 

 
� "%�"
�
0���������
� �
E__inference_model_22_layer_call_and_return_conditional_losses_9013284u%&./=>B�?
8�5
+�(
	input_105���������  
p

 
� "%�"
�
0���������
� �
E__inference_model_22_layer_call_and_return_conditional_losses_9013384r%&./=>?�<
5�2
(�%
inputs���������  
p 

 
� "%�"
�
0���������
� �
E__inference_model_22_layer_call_and_return_conditional_losses_9013419r%&./=>?�<
5�2
(�%
inputs���������  
p

 
� "%�"
�
0���������
� �
*__inference_model_22_layer_call_fn_9013097h%&./=>B�?
8�5
+�(
	input_105���������  
p 

 
� "�����������
*__inference_model_22_layer_call_fn_9013232h%&./=>B�?
8�5
+�(
	input_105���������  
p

 
� "�����������
*__inference_model_22_layer_call_fn_9013328e%&./=>?�<
5�2
(�%
inputs���������  
p 

 
� "�����������
*__inference_model_22_layer_call_fn_9013349e%&./=>?�<
5�2
(�%
inputs���������  
p

 
� "�����������
%__inference_signature_wrapper_9013307�%&./=>G�D
� 
=�:
8
	input_105+�(
	input_105���������  "-�*
(
xmean�
xmean����������
B__inference_xmean_layer_call_and_return_conditional_losses_9013520]=>0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� {
'__inference_xmean_layer_call_fn_9013510P=>0�-
&�#
!�
inputs����������
� "�����������
N__inference_zero_padding2d_13_layer_call_and_return_conditional_losses_9013430�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
3__inference_zero_padding2d_13_layer_call_fn_9013424�R�O
H�E
C�@
inputs4������������������������������������
� ";�84������������������������������������