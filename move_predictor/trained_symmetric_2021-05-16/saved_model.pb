èá
ý
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"serve*2.2.02unknown8¶

firstConv64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namefirstConv64/kernel

&firstConv64/kernel/Read/ReadVariableOpReadVariableOpfirstConv64/kernel*&
_output_shapes
:@*
dtype0
x
firstConv64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namefirstConv64/bias
q
$firstConv64/bias/Read/ReadVariableOpReadVariableOpfirstConv64/bias*
_output_shapes
:@*
dtype0

secondConv64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_namesecondConv64/kernel

'secondConv64/kernel/Read/ReadVariableOpReadVariableOpsecondConv64/kernel*&
_output_shapes
:@@*
dtype0
z
secondConv64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namesecondConv64/bias
s
%secondConv64/bias/Read/ReadVariableOpReadVariableOpsecondConv64/bias*
_output_shapes
:@*
dtype0

firstConv128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namefirstConv128/kernel

'firstConv128/kernel/Read/ReadVariableOpReadVariableOpfirstConv128/kernel*'
_output_shapes
:@*
dtype0
{
firstConv128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefirstConv128/bias
t
%firstConv128/bias/Read/ReadVariableOpReadVariableOpfirstConv128/bias*
_output_shapes	
:*
dtype0

secondConv128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namesecondConv128/kernel

(secondConv128/kernel/Read/ReadVariableOpReadVariableOpsecondConv128/kernel*(
_output_shapes
:*
dtype0
}
secondConv128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namesecondConv128/bias
v
&secondConv128/bias/Read/ReadVariableOpReadVariableOpsecondConv128/bias*
_output_shapes	
:*
dtype0
v
fc128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
@*
shared_namefc128/kernel
o
 fc128/kernel/Read/ReadVariableOpReadVariableOpfc128/kernel* 
_output_shapes
:
@*
dtype0
m

fc128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
fc128/bias
f
fc128/bias/Read/ReadVariableOpReadVariableOp
fc128/bias*
_output_shapes	
:*
dtype0
s
fc60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<*
shared_namefc60/kernel
l
fc60/kernel/Read/ReadVariableOpReadVariableOpfc60/kernel*
_output_shapes
:	<*
dtype0
j
	fc60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_name	fc60/bias
c
fc60/bias/Read/ReadVariableOpReadVariableOp	fc60/bias*
_output_shapes
:<*
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
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
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
¢
SGD/firstConv64/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!SGD/firstConv64/kernel/momentum

3SGD/firstConv64/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/firstConv64/kernel/momentum*&
_output_shapes
:@*
dtype0

SGD/firstConv64/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameSGD/firstConv64/bias/momentum

1SGD/firstConv64/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/firstConv64/bias/momentum*
_output_shapes
:@*
dtype0
¤
 SGD/secondConv64/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" SGD/secondConv64/kernel/momentum

4SGD/secondConv64/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/secondConv64/kernel/momentum*&
_output_shapes
:@@*
dtype0

SGD/secondConv64/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name SGD/secondConv64/bias/momentum

2SGD/secondConv64/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/secondConv64/bias/momentum*
_output_shapes
:@*
dtype0
¥
 SGD/firstConv128/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" SGD/firstConv128/kernel/momentum

4SGD/firstConv128/kernel/momentum/Read/ReadVariableOpReadVariableOp SGD/firstConv128/kernel/momentum*'
_output_shapes
:@*
dtype0

SGD/firstConv128/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name SGD/firstConv128/bias/momentum

2SGD/firstConv128/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/firstConv128/bias/momentum*
_output_shapes	
:*
dtype0
¨
!SGD/secondConv128/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!SGD/secondConv128/kernel/momentum
¡
5SGD/secondConv128/kernel/momentum/Read/ReadVariableOpReadVariableOp!SGD/secondConv128/kernel/momentum*(
_output_shapes
:*
dtype0

SGD/secondConv128/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!SGD/secondConv128/bias/momentum

3SGD/secondConv128/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/secondConv128/bias/momentum*
_output_shapes	
:*
dtype0

SGD/fc128/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
@**
shared_nameSGD/fc128/kernel/momentum

-SGD/fc128/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/fc128/kernel/momentum* 
_output_shapes
:
@*
dtype0

SGD/fc128/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameSGD/fc128/bias/momentum

+SGD/fc128/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/fc128/bias/momentum*
_output_shapes	
:*
dtype0

SGD/fc60/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<*)
shared_nameSGD/fc60/kernel/momentum

,SGD/fc60/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/fc60/kernel/momentum*
_output_shapes
:	<*
dtype0

SGD/fc60/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*'
shared_nameSGD/fc60/bias/momentum
}
*SGD/fc60/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/fc60/bias/momentum*
_output_shapes
:<*
dtype0

NoOpNoOp
â6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*6
value6B6 B6
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

 kernel
!bias
"trainable_variables
#	variables
$regularization_losses
%	keras_api
R
&trainable_variables
'	variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,trainable_variables
-	variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
ö
	6decay
7learning_rate
8momentum
9itermomentummmomentumnmomentumomomentumpmomentumqmomentumr momentums!momentumt*momentumu+momentumv0momentumw1momentumx
V
0
1
2
3
4
5
 6
!7
*8
+9
010
111
V
0
1
2
3
4
5
 6
!7
*8
+9
010
111
 
­
	trainable_variables

	variables

:layers
;layer_regularization_losses
<metrics
=non_trainable_variables
regularization_losses
>layer_metrics
 
^\
VARIABLE_VALUEfirstConv64/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEfirstConv64/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
	variables

?layers
@layer_regularization_losses
Ametrics
Bnon_trainable_variables
regularization_losses
Clayer_metrics
_]
VARIABLE_VALUEsecondConv64/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEsecondConv64/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
	variables

Dlayers
Elayer_regularization_losses
Fmetrics
Gnon_trainable_variables
regularization_losses
Hlayer_metrics
_]
VARIABLE_VALUEfirstConv128/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEfirstConv128/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
	variables

Ilayers
Jlayer_regularization_losses
Kmetrics
Lnon_trainable_variables
regularization_losses
Mlayer_metrics
`^
VARIABLE_VALUEsecondConv128/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEsecondConv128/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
­
"trainable_variables
#	variables

Nlayers
Olayer_regularization_losses
Pmetrics
Qnon_trainable_variables
$regularization_losses
Rlayer_metrics
 
 
 
­
&trainable_variables
'	variables

Slayers
Tlayer_regularization_losses
Umetrics
Vnon_trainable_variables
(regularization_losses
Wlayer_metrics
XV
VARIABLE_VALUEfc128/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
fc128/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
­
,trainable_variables
-	variables

Xlayers
Ylayer_regularization_losses
Zmetrics
[non_trainable_variables
.regularization_losses
\layer_metrics
WU
VARIABLE_VALUEfc60/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc60/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
­
2trainable_variables
3	variables

]layers
^layer_regularization_losses
_metrics
`non_trainable_variables
4regularization_losses
alayer_metrics
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6
 

b0
c1
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
	dtotal
	ecount
f	variables
g	keras_api
D
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

d0
e1

f	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

h0
i1

k	variables

VARIABLE_VALUESGD/firstConv64/kernel/momentumYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/firstConv64/bias/momentumWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE SGD/secondConv64/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/secondConv64/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE SGD/firstConv128/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/firstConv128/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!SGD/secondConv128/kernel/momentumYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/secondConv128/bias/momentumWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/fc128/kernel/momentumYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/fc128/bias/momentumWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/fc60/kernel/momentumYlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUESGD/fc60/bias/momentumWlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_firstConv64_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCall!serving_default_firstConv64_inputfirstConv64/kernelfirstConv64/biassecondConv64/kernelsecondConv64/biasfirstConv128/kernelfirstConv128/biassecondConv128/kernelsecondConv128/biasfc128/kernel
fc128/biasfc60/kernel	fc60/bias*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*.
_read_only_resource_inputs
	
**
config_proto

CPU

GPU 2J 8*-
f(R&
$__inference_signature_wrapper_518461
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
£
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&firstConv64/kernel/Read/ReadVariableOp$firstConv64/bias/Read/ReadVariableOp'secondConv64/kernel/Read/ReadVariableOp%secondConv64/bias/Read/ReadVariableOp'firstConv128/kernel/Read/ReadVariableOp%firstConv128/bias/Read/ReadVariableOp(secondConv128/kernel/Read/ReadVariableOp&secondConv128/bias/Read/ReadVariableOp fc128/kernel/Read/ReadVariableOpfc128/bias/Read/ReadVariableOpfc60/kernel/Read/ReadVariableOpfc60/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp3SGD/firstConv64/kernel/momentum/Read/ReadVariableOp1SGD/firstConv64/bias/momentum/Read/ReadVariableOp4SGD/secondConv64/kernel/momentum/Read/ReadVariableOp2SGD/secondConv64/bias/momentum/Read/ReadVariableOp4SGD/firstConv128/kernel/momentum/Read/ReadVariableOp2SGD/firstConv128/bias/momentum/Read/ReadVariableOp5SGD/secondConv128/kernel/momentum/Read/ReadVariableOp3SGD/secondConv128/bias/momentum/Read/ReadVariableOp-SGD/fc128/kernel/momentum/Read/ReadVariableOp+SGD/fc128/bias/momentum/Read/ReadVariableOp,SGD/fc60/kernel/momentum/Read/ReadVariableOp*SGD/fc60/bias/momentum/Read/ReadVariableOpConst*-
Tin&
$2"	*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*(
f#R!
__inference__traced_save_519027

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefirstConv64/kernelfirstConv64/biassecondConv64/kernelsecondConv64/biasfirstConv128/kernelfirstConv128/biassecondConv128/kernelsecondConv128/biasfc128/kernel
fc128/biasfc60/kernel	fc60/biasdecaylearning_ratemomentumSGD/itertotalcounttotal_1count_1SGD/firstConv64/kernel/momentumSGD/firstConv64/bias/momentum SGD/secondConv64/kernel/momentumSGD/secondConv64/bias/momentum SGD/firstConv128/kernel/momentumSGD/firstConv128/bias/momentum!SGD/secondConv128/kernel/momentumSGD/secondConv128/bias/momentumSGD/fc128/kernel/momentumSGD/fc128/bias/momentumSGD/fc60/kernel/momentumSGD/fc60/bias/momentum*,
Tin%
#2!*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*+
f&R$
"__inference__traced_restore_519135º¦


¨
@__inference_fc60_layer_call_and_return_conditional_losses_518003

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	<*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2	
Softmax¾
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/adde
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:::P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
µ?

!__inference__wrapped_model_517791
firstconv64_input9
5sequential_firstconv64_conv2d_readvariableop_resource:
6sequential_firstconv64_biasadd_readvariableop_resource:
6sequential_secondconv64_conv2d_readvariableop_resource;
7sequential_secondconv64_biasadd_readvariableop_resource:
6sequential_firstconv128_conv2d_readvariableop_resource;
7sequential_firstconv128_biasadd_readvariableop_resource;
7sequential_secondconv128_conv2d_readvariableop_resource<
8sequential_secondconv128_biasadd_readvariableop_resource3
/sequential_fc128_matmul_readvariableop_resource4
0sequential_fc128_biasadd_readvariableop_resource2
.sequential_fc60_matmul_readvariableop_resource3
/sequential_fc60_biasadd_readvariableop_resource
identityÚ
,sequential/firstConv64/Conv2D/ReadVariableOpReadVariableOp5sequential_firstconv64_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,sequential/firstConv64/Conv2D/ReadVariableOpó
sequential/firstConv64/Conv2DConv2Dfirstconv64_input4sequential/firstConv64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
sequential/firstConv64/Conv2DÑ
-sequential/firstConv64/BiasAdd/ReadVariableOpReadVariableOp6sequential_firstconv64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/firstConv64/BiasAdd/ReadVariableOpä
sequential/firstConv64/BiasAddBiasAdd&sequential/firstConv64/Conv2D:output:05sequential/firstConv64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential/firstConv64/BiasAdd¥
sequential/firstConv64/ReluRelu'sequential/firstConv64/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential/firstConv64/ReluÝ
-sequential/secondConv64/Conv2D/ReadVariableOpReadVariableOp6sequential_secondconv64_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential/secondConv64/Conv2D/ReadVariableOp
sequential/secondConv64/Conv2DConv2D)sequential/firstConv64/Relu:activations:05sequential/secondConv64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2 
sequential/secondConv64/Conv2DÔ
.sequential/secondConv64/BiasAdd/ReadVariableOpReadVariableOp7sequential_secondconv64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential/secondConv64/BiasAdd/ReadVariableOpè
sequential/secondConv64/BiasAddBiasAdd'sequential/secondConv64/Conv2D:output:06sequential/secondConv64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential/secondConv64/BiasAdd¨
sequential/secondConv64/ReluRelu(sequential/secondConv64/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential/secondConv64/ReluÞ
-sequential/firstConv128/Conv2D/ReadVariableOpReadVariableOp6sequential_firstconv128_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02/
-sequential/firstConv128/Conv2D/ReadVariableOp
sequential/firstConv128/Conv2DConv2D*sequential/secondConv64/Relu:activations:05sequential/firstConv128/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2 
sequential/firstConv128/Conv2DÕ
.sequential/firstConv128/BiasAdd/ReadVariableOpReadVariableOp7sequential_firstconv128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential/firstConv128/BiasAdd/ReadVariableOpé
sequential/firstConv128/BiasAddBiasAdd'sequential/firstConv128/Conv2D:output:06sequential/firstConv128/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential/firstConv128/BiasAdd©
sequential/firstConv128/ReluRelu(sequential/firstConv128/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential/firstConv128/Reluâ
.sequential/secondConv128/Conv2D/ReadVariableOpReadVariableOp7sequential_secondconv128_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype020
.sequential/secondConv128/Conv2D/ReadVariableOp
sequential/secondConv128/Conv2DConv2D*sequential/firstConv128/Relu:activations:06sequential/secondConv128/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2!
sequential/secondConv128/Conv2DØ
/sequential/secondConv128/BiasAdd/ReadVariableOpReadVariableOp8sequential_secondconv128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype021
/sequential/secondConv128/BiasAdd/ReadVariableOpí
 sequential/secondConv128/BiasAddBiasAdd(sequential/secondConv128/Conv2D:output:07sequential/secondConv128/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential/secondConv128/BiasAdd¬
sequential/secondConv128/ReluRelu)sequential/secondConv128/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential/secondConv128/Relu
sequential/flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
sequential/flat/Const½
sequential/flat/ReshapeReshape+sequential/secondConv128/Relu:activations:0sequential/flat/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential/flat/ReshapeÂ
&sequential/fc128/MatMul/ReadVariableOpReadVariableOp/sequential_fc128_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype02(
&sequential/fc128/MatMul/ReadVariableOpÁ
sequential/fc128/MatMulMatMul sequential/flat/Reshape:output:0.sequential/fc128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential/fc128/MatMulÀ
'sequential/fc128/BiasAdd/ReadVariableOpReadVariableOp0sequential_fc128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'sequential/fc128/BiasAdd/ReadVariableOpÆ
sequential/fc128/BiasAddBiasAdd!sequential/fc128/MatMul:product:0/sequential/fc128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential/fc128/BiasAdd
sequential/fc128/ReluRelu!sequential/fc128/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential/fc128/Relu¾
%sequential/fc60/MatMul/ReadVariableOpReadVariableOp.sequential_fc60_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02'
%sequential/fc60/MatMul/ReadVariableOpÀ
sequential/fc60/MatMulMatMul#sequential/fc128/Relu:activations:0-sequential/fc60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
sequential/fc60/MatMul¼
&sequential/fc60/BiasAdd/ReadVariableOpReadVariableOp/sequential_fc60_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02(
&sequential/fc60/BiasAdd/ReadVariableOpÁ
sequential/fc60/BiasAddBiasAdd sequential/fc60/MatMul:product:0.sequential/fc60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
sequential/fc60/BiasAdd
sequential/fc60/SoftmaxSoftmax sequential/fc60/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
sequential/fc60/Softmaxu
IdentityIdentity!sequential/fc60/Softmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:::::::::::::b ^
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefirstConv64_input:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
¥
©
A__inference_fc128_layer_call_and_return_conditional_losses_518781

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
@*
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
ReluÁ
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/addg
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:::P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ëy

F__inference_sequential_layer_call_and_return_conditional_losses_518557

inputs.
*firstconv64_conv2d_readvariableop_resource/
+firstconv64_biasadd_readvariableop_resource/
+secondconv64_conv2d_readvariableop_resource0
,secondconv64_biasadd_readvariableop_resource/
+firstconv128_conv2d_readvariableop_resource0
,firstconv128_biasadd_readvariableop_resource0
,secondconv128_conv2d_readvariableop_resource1
-secondconv128_biasadd_readvariableop_resource(
$fc128_matmul_readvariableop_resource)
%fc128_biasadd_readvariableop_resource'
#fc60_matmul_readvariableop_resource(
$fc60_biasadd_readvariableop_resource
identity¹
!firstConv64/Conv2D/ReadVariableOpReadVariableOp*firstconv64_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02#
!firstConv64/Conv2D/ReadVariableOpÇ
firstConv64/Conv2DConv2Dinputs)firstConv64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
firstConv64/Conv2D°
"firstConv64/BiasAdd/ReadVariableOpReadVariableOp+firstconv64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"firstConv64/BiasAdd/ReadVariableOp¸
firstConv64/BiasAddBiasAddfirstConv64/Conv2D:output:0*firstConv64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
firstConv64/BiasAdd
firstConv64/ReluRelufirstConv64/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
firstConv64/Relu¼
"secondConv64/Conv2D/ReadVariableOpReadVariableOp+secondconv64_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"secondConv64/Conv2D/ReadVariableOpâ
secondConv64/Conv2DConv2DfirstConv64/Relu:activations:0*secondConv64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
secondConv64/Conv2D³
#secondConv64/BiasAdd/ReadVariableOpReadVariableOp,secondconv64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#secondConv64/BiasAdd/ReadVariableOp¼
secondConv64/BiasAddBiasAddsecondConv64/Conv2D:output:0+secondConv64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
secondConv64/BiasAdd
secondConv64/ReluRelusecondConv64/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
secondConv64/Relu½
"firstConv128/Conv2D/ReadVariableOpReadVariableOp+firstconv128_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02$
"firstConv128/Conv2D/ReadVariableOpä
firstConv128/Conv2DConv2DsecondConv64/Relu:activations:0*firstConv128/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
firstConv128/Conv2D´
#firstConv128/BiasAdd/ReadVariableOpReadVariableOp,firstconv128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#firstConv128/BiasAdd/ReadVariableOp½
firstConv128/BiasAddBiasAddfirstConv128/Conv2D:output:0+firstConv128/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
firstConv128/BiasAdd
firstConv128/ReluRelufirstConv128/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
firstConv128/ReluÁ
#secondConv128/Conv2D/ReadVariableOpReadVariableOp,secondconv128_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02%
#secondConv128/Conv2D/ReadVariableOpç
secondConv128/Conv2DConv2DfirstConv128/Relu:activations:0+secondConv128/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
secondConv128/Conv2D·
$secondConv128/BiasAdd/ReadVariableOpReadVariableOp-secondconv128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$secondConv128/BiasAdd/ReadVariableOpÁ
secondConv128/BiasAddBiasAddsecondConv128/Conv2D:output:0,secondConv128/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
secondConv128/BiasAdd
secondConv128/ReluRelusecondConv128/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
secondConv128/Relui

flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2

flat/Const
flat/ReshapeReshape secondConv128/Relu:activations:0flat/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
flat/Reshape¡
fc128/MatMul/ReadVariableOpReadVariableOp$fc128_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype02
fc128/MatMul/ReadVariableOp
fc128/MatMulMatMulflat/Reshape:output:0#fc128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc128/MatMul
fc128/BiasAdd/ReadVariableOpReadVariableOp%fc128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc128/BiasAdd/ReadVariableOp
fc128/BiasAddBiasAddfc128/MatMul:product:0$fc128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc128/BiasAddk

fc128/ReluRelufc128/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

fc128/Relu
fc60/MatMul/ReadVariableOpReadVariableOp#fc60_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02
fc60/MatMul/ReadVariableOp
fc60/MatMulMatMulfc128/Relu:activations:0"fc60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
fc60/MatMul
fc60/BiasAdd/ReadVariableOpReadVariableOp$fc60_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
fc60/BiasAdd/ReadVariableOp
fc60/BiasAddBiasAddfc60/MatMul:product:0#fc60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
fc60/BiasAddp
fc60/SoftmaxSoftmaxfc60/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
fc60/Softmaxß
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*firstconv64_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/addâ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+secondconv64_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/addã
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+firstconv128_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/addç
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,secondconv128_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/addÇ
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$fc128_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/addÃ
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp#fc60_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/addj
IdentityIdentityfc60/Softmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:::::::::::::W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
i
Ù
F__inference_sequential_layer_call_and_return_conditional_losses_518068
firstconv64_input
firstconv64_517915
firstconv64_517917
secondconv64_517920
secondconv64_517922
firstconv128_517925
firstconv128_517927
secondconv128_517930
secondconv128_517932
fc128_517979
fc128_517981
fc60_518014
fc60_518016
identity¢fc128/StatefulPartitionedCall¢fc60/StatefulPartitionedCall¢$firstConv128/StatefulPartitionedCall¢#firstConv64/StatefulPartitionedCall¢%secondConv128/StatefulPartitionedCall¢$secondConv64/StatefulPartitionedCall
#firstConv64/StatefulPartitionedCallStatefulPartitionedCallfirstconv64_inputfirstconv64_517915firstconv64_517917*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_firstConv64_layer_call_and_return_conditional_losses_5178112%
#firstConv64/StatefulPartitionedCall´
$secondConv64/StatefulPartitionedCallStatefulPartitionedCall,firstConv64/StatefulPartitionedCall:output:0secondconv64_517920secondconv64_517922*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_secondConv64_layer_call_and_return_conditional_losses_5178412&
$secondConv64/StatefulPartitionedCall¶
$firstConv128/StatefulPartitionedCallStatefulPartitionedCall-secondConv64/StatefulPartitionedCall:output:0firstconv128_517925firstconv128_517927*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_firstConv128_layer_call_and_return_conditional_losses_5178712&
$firstConv128/StatefulPartitionedCall»
%secondConv128/StatefulPartitionedCallStatefulPartitionedCall-firstConv128/StatefulPartitionedCall:output:0secondconv128_517930secondconv128_517932*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*R
fMRK
I__inference_secondConv128_layer_call_and_return_conditional_losses_5179012'
%secondConv128/StatefulPartitionedCallÏ
flat/PartitionedCallPartitionedCall.secondConv128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_5179412
flat/PartitionedCallû
fc128/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0fc128_517979fc128_517981*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_fc128_layer_call_and_return_conditional_losses_5179682
fc128/StatefulPartitionedCallþ
fc60/StatefulPartitionedCallStatefulPartitionedCall&fc128/StatefulPartitionedCall:output:0fc60_518014fc60_518016*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_fc60_layer_call_and_return_conditional_losses_5180032
fc60/StatefulPartitionedCallÇ
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv64_517915*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/addÊ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv64_517920*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/addË
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv128_517925*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/addÏ
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv128_517930*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/add¯
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc128_517979* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/add«
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc60_518014*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/addÔ
IdentityIdentity%fc60/StatefulPartitionedCall:output:0^fc128/StatefulPartitionedCall^fc60/StatefulPartitionedCall%^firstConv128/StatefulPartitionedCall$^firstConv64/StatefulPartitionedCall&^secondConv128/StatefulPartitionedCall%^secondConv64/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2>
fc128/StatefulPartitionedCallfc128/StatefulPartitionedCall2<
fc60/StatefulPartitionedCallfc60/StatefulPartitionedCall2L
$firstConv128/StatefulPartitionedCall$firstConv128/StatefulPartitionedCall2J
#firstConv64/StatefulPartitionedCall#firstConv64/StatefulPartitionedCall2N
%secondConv128/StatefulPartitionedCall%secondConv128/StatefulPartitionedCall2L
$secondConv64/StatefulPartitionedCall$secondConv64/StatefulPartitionedCall:b ^
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefirstConv64_input:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 

¢
+__inference_sequential_layer_call_fn_518264
firstconv64_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallfirstconv64_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*.
_read_only_resource_inputs
	
**
config_proto

CPU

GPU 2J 8*O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5182372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefirstConv64_input:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
î

$__inference_signature_wrapper_518461
firstconv64_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallfirstconv64_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*.
_read_only_resource_inputs
	
**
config_proto

CPU

GPU 2J 8**
f%R#
!__inference__wrapped_model_5177912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefirstConv64_input:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
õh
Î
F__inference_sequential_layer_call_and_return_conditional_losses_518349

inputs
firstconv64_518269
firstconv64_518271
secondconv64_518274
secondconv64_518276
firstconv128_518279
firstconv128_518281
secondconv128_518284
secondconv128_518286
fc128_518290
fc128_518292
fc60_518295
fc60_518297
identity¢fc128/StatefulPartitionedCall¢fc60/StatefulPartitionedCall¢$firstConv128/StatefulPartitionedCall¢#firstConv64/StatefulPartitionedCall¢%secondConv128/StatefulPartitionedCall¢$secondConv64/StatefulPartitionedCall
#firstConv64/StatefulPartitionedCallStatefulPartitionedCallinputsfirstconv64_518269firstconv64_518271*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_firstConv64_layer_call_and_return_conditional_losses_5178112%
#firstConv64/StatefulPartitionedCall´
$secondConv64/StatefulPartitionedCallStatefulPartitionedCall,firstConv64/StatefulPartitionedCall:output:0secondconv64_518274secondconv64_518276*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_secondConv64_layer_call_and_return_conditional_losses_5178412&
$secondConv64/StatefulPartitionedCall¶
$firstConv128/StatefulPartitionedCallStatefulPartitionedCall-secondConv64/StatefulPartitionedCall:output:0firstconv128_518279firstconv128_518281*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_firstConv128_layer_call_and_return_conditional_losses_5178712&
$firstConv128/StatefulPartitionedCall»
%secondConv128/StatefulPartitionedCallStatefulPartitionedCall-firstConv128/StatefulPartitionedCall:output:0secondconv128_518284secondconv128_518286*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*R
fMRK
I__inference_secondConv128_layer_call_and_return_conditional_losses_5179012'
%secondConv128/StatefulPartitionedCallÏ
flat/PartitionedCallPartitionedCall.secondConv128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_5179412
flat/PartitionedCallû
fc128/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0fc128_518290fc128_518292*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_fc128_layer_call_and_return_conditional_losses_5179682
fc128/StatefulPartitionedCallþ
fc60/StatefulPartitionedCallStatefulPartitionedCall&fc128/StatefulPartitionedCall:output:0fc60_518295fc60_518297*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_fc60_layer_call_and_return_conditional_losses_5180032
fc60/StatefulPartitionedCallÇ
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv64_518269*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/addÊ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv64_518274*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/addË
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv128_518279*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/addÏ
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv128_518284*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/add¯
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc128_518290* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/add«
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc60_518295*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/addÔ
IdentityIdentity%fc60/StatefulPartitionedCall:output:0^fc128/StatefulPartitionedCall^fc60/StatefulPartitionedCall%^firstConv128/StatefulPartitionedCall$^firstConv64/StatefulPartitionedCall&^secondConv128/StatefulPartitionedCall%^secondConv64/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2>
fc128/StatefulPartitionedCallfc128/StatefulPartitionedCall2<
fc60/StatefulPartitionedCallfc60/StatefulPartitionedCall2L
$firstConv128/StatefulPartitionedCall$firstConv128/StatefulPartitionedCall2J
#firstConv64/StatefulPartitionedCall#firstConv64/StatefulPartitionedCall2N
%secondConv128/StatefulPartitionedCall%secondConv128/StatefulPartitionedCall2L
$secondConv64/StatefulPartitionedCall$secondConv64/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
º
\
@__inference_flat_layer_call_and_return_conditional_losses_518749

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

+__inference_sequential_layer_call_fn_518682

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*.
_read_only_resource_inputs
	
**
config_proto

CPU

GPU 2J 8*O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5182372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
ù

+__inference_sequential_layer_call_fn_518711

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*.
_read_only_resource_inputs
	
**
config_proto

CPU

GPU 2J 8*O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5183492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
Ê
±
I__inference_secondConv128_layer_call_and_return_conditional_losses_517901

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
ReluÙ
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/add
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
Æ
s
__inference_loss_fn_1_518852B
>secondconv64_kernel_regularizer_square_readvariableop_resource
identityõ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp>secondconv64_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/addj
IdentityIdentity'secondConv64/kernel/Regularizer/add:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:: 

_output_shapes
: 
­
°
H__inference_firstConv128_layer_call_and_return_conditional_losses_517871

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp¶
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
ReluÖ
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/add
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 

¨
@__inference_fc60_layer_call_and_return_conditional_losses_518817

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	<*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2	
Softmax¾
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/adde
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:::P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
¬
r
__inference_loss_fn_0_518839A
=firstconv64_kernel_regularizer_square_readvariableop_resource
identityò
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=firstconv64_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/addi
IdentityIdentity&firstConv64/kernel/Regularizer/add:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:: 

_output_shapes
: 
õh
Î
F__inference_sequential_layer_call_and_return_conditional_losses_518237

inputs
firstconv64_518157
firstconv64_518159
secondconv64_518162
secondconv64_518164
firstconv128_518167
firstconv128_518169
secondconv128_518172
secondconv128_518174
fc128_518178
fc128_518180
fc60_518183
fc60_518185
identity¢fc128/StatefulPartitionedCall¢fc60/StatefulPartitionedCall¢$firstConv128/StatefulPartitionedCall¢#firstConv64/StatefulPartitionedCall¢%secondConv128/StatefulPartitionedCall¢$secondConv64/StatefulPartitionedCall
#firstConv64/StatefulPartitionedCallStatefulPartitionedCallinputsfirstconv64_518157firstconv64_518159*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_firstConv64_layer_call_and_return_conditional_losses_5178112%
#firstConv64/StatefulPartitionedCall´
$secondConv64/StatefulPartitionedCallStatefulPartitionedCall,firstConv64/StatefulPartitionedCall:output:0secondconv64_518162secondconv64_518164*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_secondConv64_layer_call_and_return_conditional_losses_5178412&
$secondConv64/StatefulPartitionedCall¶
$firstConv128/StatefulPartitionedCallStatefulPartitionedCall-secondConv64/StatefulPartitionedCall:output:0firstconv128_518167firstconv128_518169*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_firstConv128_layer_call_and_return_conditional_losses_5178712&
$firstConv128/StatefulPartitionedCall»
%secondConv128/StatefulPartitionedCallStatefulPartitionedCall-firstConv128/StatefulPartitionedCall:output:0secondconv128_518172secondconv128_518174*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*R
fMRK
I__inference_secondConv128_layer_call_and_return_conditional_losses_5179012'
%secondConv128/StatefulPartitionedCallÏ
flat/PartitionedCallPartitionedCall.secondConv128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_5179412
flat/PartitionedCallû
fc128/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0fc128_518178fc128_518180*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_fc128_layer_call_and_return_conditional_losses_5179682
fc128/StatefulPartitionedCallþ
fc60/StatefulPartitionedCallStatefulPartitionedCall&fc128/StatefulPartitionedCall:output:0fc60_518183fc60_518185*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_fc60_layer_call_and_return_conditional_losses_5180032
fc60/StatefulPartitionedCallÇ
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv64_518157*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/addÊ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv64_518162*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/addË
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv128_518167*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/addÏ
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv128_518172*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/add¯
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc128_518178* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/add«
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc60_518183*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/addÔ
IdentityIdentity%fc60/StatefulPartitionedCall:output:0^fc128/StatefulPartitionedCall^fc60/StatefulPartitionedCall%^firstConv128/StatefulPartitionedCall$^firstConv64/StatefulPartitionedCall&^secondConv128/StatefulPartitionedCall%^secondConv64/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2>
fc128/StatefulPartitionedCallfc128/StatefulPartitionedCall2<
fc60/StatefulPartitionedCallfc60/StatefulPartitionedCall2L
$firstConv128/StatefulPartitionedCall$firstConv128/StatefulPartitionedCall2J
#firstConv64/StatefulPartitionedCall#firstConv64/StatefulPartitionedCall2N
%secondConv128/StatefulPartitionedCall%secondConv128/StatefulPartitionedCall2L
$secondConv64/StatefulPartitionedCall$secondConv64/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
i
Ù
F__inference_sequential_layer_call_and_return_conditional_losses_518151
firstconv64_input
firstconv64_518071
firstconv64_518073
secondconv64_518076
secondconv64_518078
firstconv128_518081
firstconv128_518083
secondconv128_518086
secondconv128_518088
fc128_518092
fc128_518094
fc60_518097
fc60_518099
identity¢fc128/StatefulPartitionedCall¢fc60/StatefulPartitionedCall¢$firstConv128/StatefulPartitionedCall¢#firstConv64/StatefulPartitionedCall¢%secondConv128/StatefulPartitionedCall¢$secondConv64/StatefulPartitionedCall
#firstConv64/StatefulPartitionedCallStatefulPartitionedCallfirstconv64_inputfirstconv64_518071firstconv64_518073*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_firstConv64_layer_call_and_return_conditional_losses_5178112%
#firstConv64/StatefulPartitionedCall´
$secondConv64/StatefulPartitionedCallStatefulPartitionedCall,firstConv64/StatefulPartitionedCall:output:0secondconv64_518076secondconv64_518078*
Tin
2*
Tout
2*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_secondConv64_layer_call_and_return_conditional_losses_5178412&
$secondConv64/StatefulPartitionedCall¶
$firstConv128/StatefulPartitionedCallStatefulPartitionedCall-secondConv64/StatefulPartitionedCall:output:0firstconv128_518081firstconv128_518083*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_firstConv128_layer_call_and_return_conditional_losses_5178712&
$firstConv128/StatefulPartitionedCall»
%secondConv128/StatefulPartitionedCallStatefulPartitionedCall-firstConv128/StatefulPartitionedCall:output:0secondconv128_518086secondconv128_518088*
Tin
2*
Tout
2*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*R
fMRK
I__inference_secondConv128_layer_call_and_return_conditional_losses_5179012'
%secondConv128/StatefulPartitionedCallÏ
flat/PartitionedCallPartitionedCall.secondConv128/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_5179412
flat/PartitionedCallû
fc128/StatefulPartitionedCallStatefulPartitionedCallflat/PartitionedCall:output:0fc128_518092fc128_518094*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_fc128_layer_call_and_return_conditional_losses_5179682
fc128/StatefulPartitionedCallþ
fc60/StatefulPartitionedCallStatefulPartitionedCall&fc128/StatefulPartitionedCall:output:0fc60_518097fc60_518099*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_fc60_layer_call_and_return_conditional_losses_5180032
fc60/StatefulPartitionedCallÇ
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv64_518071*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/addÊ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv64_518076*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/addË
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfirstconv128_518081*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/addÏ
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsecondconv128_518086*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/add¯
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc128_518092* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/add«
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOpfc60_518097*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/addÔ
IdentityIdentity%fc60/StatefulPartitionedCall:output:0^fc128/StatefulPartitionedCall^fc60/StatefulPartitionedCall%^firstConv128/StatefulPartitionedCall$^firstConv64/StatefulPartitionedCall&^secondConv128/StatefulPartitionedCall%^secondConv64/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::2>
fc128/StatefulPartitionedCallfc128/StatefulPartitionedCall2<
fc60/StatefulPartitionedCallfc60/StatefulPartitionedCall2L
$firstConv128/StatefulPartitionedCall$firstConv128/StatefulPartitionedCall2J
#firstConv64/StatefulPartitionedCall#firstConv64/StatefulPartitionedCall2N
%secondConv128/StatefulPartitionedCall%secondConv128/StatefulPartitionedCall2L
$secondConv64/StatefulPartitionedCall$secondConv64/StatefulPartitionedCall:b ^
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefirstConv64_input:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
ä
t
__inference_loss_fn_3_518878C
?secondconv128_kernel_regularizer_square_readvariableop_resource
identityú
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?secondconv128_kernel_regularizer_square_readvariableop_resource*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/addk
IdentityIdentity(secondConv128/kernel/Regularizer/add:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:: 

_output_shapes
: 
º
\
@__inference_flat_layer_call_and_return_conditional_losses_517941

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
l
__inference_loss_fn_4_518891;
7fc128_kernel_regularizer_square_readvariableop_resource
identityÚ
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7fc128_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/addc
IdentityIdentity fc128/kernel/Regularizer/add:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:: 

_output_shapes
: 
¥
©
A__inference_fc128_layer_call_and_return_conditional_losses_517968

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
@*
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
ReluÁ
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/addg
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:::P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
é

-__inference_firstConv128_layer_call_fn_517881

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_firstConv128_layer_call_and_return_conditional_losses_5178712
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
¯

"__inference__traced_restore_519135
file_prefix'
#assignvariableop_firstconv64_kernel'
#assignvariableop_1_firstconv64_bias*
&assignvariableop_2_secondconv64_kernel(
$assignvariableop_3_secondconv64_bias*
&assignvariableop_4_firstconv128_kernel(
$assignvariableop_5_firstconv128_bias+
'assignvariableop_6_secondconv128_kernel)
%assignvariableop_7_secondconv128_bias#
assignvariableop_8_fc128_kernel!
assignvariableop_9_fc128_bias#
assignvariableop_10_fc60_kernel!
assignvariableop_11_fc60_bias
assignvariableop_12_decay%
!assignvariableop_13_learning_rate 
assignvariableop_14_momentum 
assignvariableop_15_sgd_iter
assignvariableop_16_total
assignvariableop_17_count
assignvariableop_18_total_1
assignvariableop_19_count_17
3assignvariableop_20_sgd_firstconv64_kernel_momentum5
1assignvariableop_21_sgd_firstconv64_bias_momentum8
4assignvariableop_22_sgd_secondconv64_kernel_momentum6
2assignvariableop_23_sgd_secondconv64_bias_momentum8
4assignvariableop_24_sgd_firstconv128_kernel_momentum6
2assignvariableop_25_sgd_firstconv128_bias_momentum9
5assignvariableop_26_sgd_secondconv128_kernel_momentum7
3assignvariableop_27_sgd_secondconv128_bias_momentum1
-assignvariableop_28_sgd_fc128_kernel_momentum/
+assignvariableop_29_sgd_fc128_bias_momentum0
,assignvariableop_30_sgd_fc60_kernel_momentum.
*assignvariableop_31_sgd_fc60_bias_momentum
identity_33¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¢	RestoreV2¢RestoreV2_1ç
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ó
valueéBæ B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_namesÎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÎ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 	2
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp#assignvariableop_firstconv64_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1
AssignVariableOp_1AssignVariableOp#assignvariableop_1_firstconv64_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2
AssignVariableOp_2AssignVariableOp&assignvariableop_2_secondconv64_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3
AssignVariableOp_3AssignVariableOp$assignvariableop_3_secondconv64_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4
AssignVariableOp_4AssignVariableOp&assignvariableop_4_firstconv128_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5
AssignVariableOp_5AssignVariableOp$assignvariableop_5_firstconv128_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6
AssignVariableOp_6AssignVariableOp'assignvariableop_6_secondconv128_kernelIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7
AssignVariableOp_7AssignVariableOp%assignvariableop_7_secondconv128_biasIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_fc128_kernelIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc128_biasIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10
AssignVariableOp_10AssignVariableOpassignvariableop_10_fc60_kernelIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11
AssignVariableOp_11AssignVariableOpassignvariableop_11_fc60_biasIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12
AssignVariableOp_12AssignVariableOpassignvariableop_12_decayIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14
AssignVariableOp_14AssignVariableOpassignvariableop_14_momentumIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0	*
_output_shapes
:2
Identity_15
AssignVariableOp_15AssignVariableOpassignvariableop_15_sgd_iterIdentity_15:output:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_17_
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:2
Identity_18
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_18_
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:2
Identity_19
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_19_
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:2
Identity_20¬
AssignVariableOp_20AssignVariableOp3assignvariableop_20_sgd_firstconv64_kernel_momentumIdentity_20:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_20_
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:2
Identity_21ª
AssignVariableOp_21AssignVariableOp1assignvariableop_21_sgd_firstconv64_bias_momentumIdentity_21:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_21_
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:2
Identity_22­
AssignVariableOp_22AssignVariableOp4assignvariableop_22_sgd_secondconv64_kernel_momentumIdentity_22:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_22_
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:2
Identity_23«
AssignVariableOp_23AssignVariableOp2assignvariableop_23_sgd_secondconv64_bias_momentumIdentity_23:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_23_
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:2
Identity_24­
AssignVariableOp_24AssignVariableOp4assignvariableop_24_sgd_firstconv128_kernel_momentumIdentity_24:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_24_
Identity_25IdentityRestoreV2:tensors:25*
T0*
_output_shapes
:2
Identity_25«
AssignVariableOp_25AssignVariableOp2assignvariableop_25_sgd_firstconv128_bias_momentumIdentity_25:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_25_
Identity_26IdentityRestoreV2:tensors:26*
T0*
_output_shapes
:2
Identity_26®
AssignVariableOp_26AssignVariableOp5assignvariableop_26_sgd_secondconv128_kernel_momentumIdentity_26:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_26_
Identity_27IdentityRestoreV2:tensors:27*
T0*
_output_shapes
:2
Identity_27¬
AssignVariableOp_27AssignVariableOp3assignvariableop_27_sgd_secondconv128_bias_momentumIdentity_27:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_27_
Identity_28IdentityRestoreV2:tensors:28*
T0*
_output_shapes
:2
Identity_28¦
AssignVariableOp_28AssignVariableOp-assignvariableop_28_sgd_fc128_kernel_momentumIdentity_28:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_28_
Identity_29IdentityRestoreV2:tensors:29*
T0*
_output_shapes
:2
Identity_29¤
AssignVariableOp_29AssignVariableOp+assignvariableop_29_sgd_fc128_bias_momentumIdentity_29:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_29_
Identity_30IdentityRestoreV2:tensors:30*
T0*
_output_shapes
:2
Identity_30¥
AssignVariableOp_30AssignVariableOp,assignvariableop_30_sgd_fc60_kernel_momentumIdentity_30:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_30_
Identity_31IdentityRestoreV2:tensors:31*
T0*
_output_shapes
:2
Identity_31£
AssignVariableOp_31AssignVariableOp*assignvariableop_31_sgd_fc60_bias_momentumIdentity_31:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_31¨
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slicesÄ
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_32«
Identity_33IdentityIdentity_32:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_33"#
identity_33Identity_33:output:0*
_input_shapes
: ::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_31AssignVariableOp_312(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
ç

-__inference_secondConv64_layer_call_fn_517851

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*Q
fLRJ
H__inference_secondConv64_layer_call_and_return_conditional_losses_5178412
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
¥
°
H__inference_secondConv64_layer_call_and_return_conditional_losses_517841

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpµ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
ReluÕ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/add
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:::i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 

¯
G__inference_firstConv64_layer_call_and_return_conditional_losses_517811

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpµ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
ReluÓ
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/add
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ëy

F__inference_sequential_layer_call_and_return_conditional_losses_518653

inputs.
*firstconv64_conv2d_readvariableop_resource/
+firstconv64_biasadd_readvariableop_resource/
+secondconv64_conv2d_readvariableop_resource0
,secondconv64_biasadd_readvariableop_resource/
+firstconv128_conv2d_readvariableop_resource0
,firstconv128_biasadd_readvariableop_resource0
,secondconv128_conv2d_readvariableop_resource1
-secondconv128_biasadd_readvariableop_resource(
$fc128_matmul_readvariableop_resource)
%fc128_biasadd_readvariableop_resource'
#fc60_matmul_readvariableop_resource(
$fc60_biasadd_readvariableop_resource
identity¹
!firstConv64/Conv2D/ReadVariableOpReadVariableOp*firstconv64_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02#
!firstConv64/Conv2D/ReadVariableOpÇ
firstConv64/Conv2DConv2Dinputs)firstConv64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
firstConv64/Conv2D°
"firstConv64/BiasAdd/ReadVariableOpReadVariableOp+firstconv64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"firstConv64/BiasAdd/ReadVariableOp¸
firstConv64/BiasAddBiasAddfirstConv64/Conv2D:output:0*firstConv64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
firstConv64/BiasAdd
firstConv64/ReluRelufirstConv64/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
firstConv64/Relu¼
"secondConv64/Conv2D/ReadVariableOpReadVariableOp+secondconv64_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"secondConv64/Conv2D/ReadVariableOpâ
secondConv64/Conv2DConv2DfirstConv64/Relu:activations:0*secondConv64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
secondConv64/Conv2D³
#secondConv64/BiasAdd/ReadVariableOpReadVariableOp,secondconv64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#secondConv64/BiasAdd/ReadVariableOp¼
secondConv64/BiasAddBiasAddsecondConv64/Conv2D:output:0+secondConv64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
secondConv64/BiasAdd
secondConv64/ReluRelusecondConv64/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
secondConv64/Relu½
"firstConv128/Conv2D/ReadVariableOpReadVariableOp+firstconv128_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02$
"firstConv128/Conv2D/ReadVariableOpä
firstConv128/Conv2DConv2DsecondConv64/Relu:activations:0*firstConv128/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
firstConv128/Conv2D´
#firstConv128/BiasAdd/ReadVariableOpReadVariableOp,firstconv128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#firstConv128/BiasAdd/ReadVariableOp½
firstConv128/BiasAddBiasAddfirstConv128/Conv2D:output:0+firstConv128/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
firstConv128/BiasAdd
firstConv128/ReluRelufirstConv128/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
firstConv128/ReluÁ
#secondConv128/Conv2D/ReadVariableOpReadVariableOp,secondconv128_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02%
#secondConv128/Conv2D/ReadVariableOpç
secondConv128/Conv2DConv2DfirstConv128/Relu:activations:0+secondConv128/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
secondConv128/Conv2D·
$secondConv128/BiasAdd/ReadVariableOpReadVariableOp-secondconv128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$secondConv128/BiasAdd/ReadVariableOpÁ
secondConv128/BiasAddBiasAddsecondConv128/Conv2D:output:0,secondConv128/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
secondConv128/BiasAdd
secondConv128/ReluRelusecondConv128/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
secondConv128/Relui

flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    2

flat/Const
flat/ReshapeReshape secondConv128/Relu:activations:0flat/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
flat/Reshape¡
fc128/MatMul/ReadVariableOpReadVariableOp$fc128_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype02
fc128/MatMul/ReadVariableOp
fc128/MatMulMatMulflat/Reshape:output:0#fc128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc128/MatMul
fc128/BiasAdd/ReadVariableOpReadVariableOp%fc128_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
fc128/BiasAdd/ReadVariableOp
fc128/BiasAddBiasAddfc128/MatMul:product:0$fc128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
fc128/BiasAddk

fc128/ReluRelufc128/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

fc128/Relu
fc60/MatMul/ReadVariableOpReadVariableOp#fc60_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02
fc60/MatMul/ReadVariableOp
fc60/MatMulMatMulfc128/Relu:activations:0"fc60/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
fc60/MatMul
fc60/BiasAdd/ReadVariableOpReadVariableOp$fc60_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
fc60/BiasAdd/ReadVariableOp
fc60/BiasAddBiasAddfc60/MatMul:product:0#fc60/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
fc60/BiasAddp
fc60/SoftmaxSoftmaxfc60/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2
fc60/Softmaxß
4firstConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*firstconv64_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype026
4firstConv64/kernel/Regularizer/Square/ReadVariableOpÇ
%firstConv64/kernel/Regularizer/SquareSquare<firstConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@2'
%firstConv64/kernel/Regularizer/Square¥
$firstConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$firstConv64/kernel/Regularizer/ConstÊ
"firstConv64/kernel/Regularizer/SumSum)firstConv64/kernel/Regularizer/Square:y:0-firstConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/Sum
$firstConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2&
$firstConv64/kernel/Regularizer/mul/xÌ
"firstConv64/kernel/Regularizer/mulMul-firstConv64/kernel/Regularizer/mul/x:output:0+firstConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/mul
$firstConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$firstConv64/kernel/Regularizer/add/xÉ
"firstConv64/kernel/Regularizer/addAddV2-firstConv64/kernel/Regularizer/add/x:output:0&firstConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2$
"firstConv64/kernel/Regularizer/addâ
5secondConv64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+secondconv64_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype027
5secondConv64/kernel/Regularizer/Square/ReadVariableOpÊ
&secondConv64/kernel/Regularizer/SquareSquare=secondConv64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@2(
&secondConv64/kernel/Regularizer/Square§
%secondConv64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%secondConv64/kernel/Regularizer/ConstÎ
#secondConv64/kernel/Regularizer/SumSum*secondConv64/kernel/Regularizer/Square:y:0.secondConv64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/Sum
%secondConv64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%secondConv64/kernel/Regularizer/mul/xÐ
#secondConv64/kernel/Regularizer/mulMul.secondConv64/kernel/Regularizer/mul/x:output:0,secondConv64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/mul
%secondConv64/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%secondConv64/kernel/Regularizer/add/xÍ
#secondConv64/kernel/Regularizer/addAddV2.secondConv64/kernel/Regularizer/add/x:output:0'secondConv64/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#secondConv64/kernel/Regularizer/addã
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+firstconv128_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/addç
6secondConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,secondconv128_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype028
6secondConv128/kernel/Regularizer/Square/ReadVariableOpÏ
'secondConv128/kernel/Regularizer/SquareSquare>secondConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*(
_output_shapes
:2)
'secondConv128/kernel/Regularizer/Square©
&secondConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&secondConv128/kernel/Regularizer/ConstÒ
$secondConv128/kernel/Regularizer/SumSum+secondConv128/kernel/Regularizer/Square:y:0/secondConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/Sum
&secondConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&secondConv128/kernel/Regularizer/mul/xÔ
$secondConv128/kernel/Regularizer/mulMul/secondConv128/kernel/Regularizer/mul/x:output:0-secondConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/mul
&secondConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&secondConv128/kernel/Regularizer/add/xÑ
$secondConv128/kernel/Regularizer/addAddV2/secondConv128/kernel/Regularizer/add/x:output:0(secondConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2&
$secondConv128/kernel/Regularizer/addÇ
.fc128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$fc128_matmul_readvariableop_resource* 
_output_shapes
:
@*
dtype020
.fc128/kernel/Regularizer/Square/ReadVariableOp¯
fc128/kernel/Regularizer/SquareSquare6fc128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
@2!
fc128/kernel/Regularizer/Square
fc128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
fc128/kernel/Regularizer/Const²
fc128/kernel/Regularizer/SumSum#fc128/kernel/Regularizer/Square:y:0'fc128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/Sum
fc128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2 
fc128/kernel/Regularizer/mul/x´
fc128/kernel/Regularizer/mulMul'fc128/kernel/Regularizer/mul/x:output:0%fc128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/mul
fc128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
fc128/kernel/Regularizer/add/x±
fc128/kernel/Regularizer/addAddV2'fc128/kernel/Regularizer/add/x:output:0 fc128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc128/kernel/Regularizer/addÃ
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp#fc60_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/addj
IdentityIdentityfc60/Softmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ:::::::::::::W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
í

.__inference_secondConv128_layer_call_fn_517911

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*R
fMRK
I__inference_secondConv128_layer_call_and_return_conditional_losses_5179012
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
å

,__inference_firstConv64_layer_call_fn_517821

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*P
fKRI
G__inference_firstConv64_layer_call_and_return_conditional_losses_5178112
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ü
A
%__inference_flat_layer_call_fn_518754

inputs
identity
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_flat_layer_call_and_return_conditional_losses_5179412
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
éO
ì
__inference__traced_save_519027
file_prefix1
-savev2_firstconv64_kernel_read_readvariableop/
+savev2_firstconv64_bias_read_readvariableop2
.savev2_secondconv64_kernel_read_readvariableop0
,savev2_secondconv64_bias_read_readvariableop2
.savev2_firstconv128_kernel_read_readvariableop0
,savev2_firstconv128_bias_read_readvariableop3
/savev2_secondconv128_kernel_read_readvariableop1
-savev2_secondconv128_bias_read_readvariableop+
'savev2_fc128_kernel_read_readvariableop)
%savev2_fc128_bias_read_readvariableop*
&savev2_fc60_kernel_read_readvariableop(
$savev2_fc60_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop>
:savev2_sgd_firstconv64_kernel_momentum_read_readvariableop<
8savev2_sgd_firstconv64_bias_momentum_read_readvariableop?
;savev2_sgd_secondconv64_kernel_momentum_read_readvariableop=
9savev2_sgd_secondconv64_bias_momentum_read_readvariableop?
;savev2_sgd_firstconv128_kernel_momentum_read_readvariableop=
9savev2_sgd_firstconv128_bias_momentum_read_readvariableop@
<savev2_sgd_secondconv128_kernel_momentum_read_readvariableop>
:savev2_sgd_secondconv128_bias_momentum_read_readvariableop8
4savev2_sgd_fc128_kernel_momentum_read_readvariableop6
2savev2_sgd_fc128_bias_momentum_read_readvariableop7
3savev2_sgd_fc60_kernel_momentum_read_readvariableop5
1savev2_sgd_fc60_bias_momentum_read_readvariableop
savev2_1_const

identity_1¢MergeV2Checkpoints¢SaveV2¢SaveV2_1
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
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_1c59d60dcf734b6b8a5bbd20ebb71647/part2	
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
value	B :2

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
ShardedFilenameá
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ó
valueéBæ B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_namesÈ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesµ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_firstconv64_kernel_read_readvariableop+savev2_firstconv64_bias_read_readvariableop.savev2_secondconv64_kernel_read_readvariableop,savev2_secondconv64_bias_read_readvariableop.savev2_firstconv128_kernel_read_readvariableop,savev2_firstconv128_bias_read_readvariableop/savev2_secondconv128_kernel_read_readvariableop-savev2_secondconv128_bias_read_readvariableop'savev2_fc128_kernel_read_readvariableop%savev2_fc128_bias_read_readvariableop&savev2_fc60_kernel_read_readvariableop$savev2_fc60_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop:savev2_sgd_firstconv64_kernel_momentum_read_readvariableop8savev2_sgd_firstconv64_bias_momentum_read_readvariableop;savev2_sgd_secondconv64_kernel_momentum_read_readvariableop9savev2_sgd_secondconv64_bias_momentum_read_readvariableop;savev2_sgd_firstconv128_kernel_momentum_read_readvariableop9savev2_sgd_firstconv128_bias_momentum_read_readvariableop<savev2_sgd_secondconv128_kernel_momentum_read_readvariableop:savev2_sgd_secondconv128_bias_momentum_read_readvariableop4savev2_sgd_fc128_kernel_momentum_read_readvariableop2savev2_sgd_fc128_bias_momentum_read_readvariableop3savev2_sgd_fc60_kernel_momentum_read_readvariableop1savev2_sgd_fc60_bias_momentum_read_readvariableop"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	2
SaveV2
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard¬
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1¢
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slicesÏ
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1ã
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¬
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*»
_input_shapes©
¦: :@:@:@@:@:@::::
@::	<:<: : : : : : : : :@:@:@@:@:@::::
@::	<:<: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::&	"
 
_output_shapes
:
@:!


_output_shapes	
::%!

_output_shapes
:	<: 

_output_shapes
:<:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::&"
 
_output_shapes
:
@:!

_output_shapes	
::%!

_output_shapes
:	<:  

_output_shapes
:<:!

_output_shapes
: 
ð
z
%__inference_fc60_layer_call_fn_518826

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_fc60_layer_call_and_return_conditional_losses_5180032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ô
{
&__inference_fc128_layer_call_fn_518790

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_fc128_layer_call_and_return_conditional_losses_5179682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
È
s
__inference_loss_fn_2_518865B
>firstconv128_kernel_regularizer_square_readvariableop_resource
identityö
5firstConv128/kernel/Regularizer/Square/ReadVariableOpReadVariableOp>firstconv128_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:@*
dtype027
5firstConv128/kernel/Regularizer/Square/ReadVariableOpË
&firstConv128/kernel/Regularizer/SquareSquare=firstConv128/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2(
&firstConv128/kernel/Regularizer/Square§
%firstConv128/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%firstConv128/kernel/Regularizer/ConstÎ
#firstConv128/kernel/Regularizer/SumSum*firstConv128/kernel/Regularizer/Square:y:0.firstConv128/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/Sum
%firstConv128/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%firstConv128/kernel/Regularizer/mul/xÐ
#firstConv128/kernel/Regularizer/mulMul.firstConv128/kernel/Regularizer/mul/x:output:0,firstConv128/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/mul
%firstConv128/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%firstConv128/kernel/Regularizer/add/xÍ
#firstConv128/kernel/Regularizer/addAddV2.firstConv128/kernel/Regularizer/add/x:output:0'firstConv128/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2%
#firstConv128/kernel/Regularizer/addj
IdentityIdentity'firstConv128/kernel/Regularizer/add:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:: 

_output_shapes
: 

¢
+__inference_sequential_layer_call_fn_518376
firstconv64_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallfirstconv64_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*.
_read_only_resource_inputs
	
**
config_proto

CPU

GPU 2J 8*O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5183492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_namefirstConv64_input:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	
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
: 
à
k
__inference_loss_fn_5_518904:
6fc60_kernel_regularizer_square_readvariableop_resource
identityÖ
-fc60/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6fc60_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	<*
dtype02/
-fc60/kernel/Regularizer/Square/ReadVariableOp«
fc60/kernel/Regularizer/SquareSquare5fc60/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	<2 
fc60/kernel/Regularizer/Square
fc60/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
fc60/kernel/Regularizer/Const®
fc60/kernel/Regularizer/SumSum"fc60/kernel/Regularizer/Square:y:0&fc60/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/Sum
fc60/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
fc60/kernel/Regularizer/mul/x°
fc60/kernel/Regularizer/mulMul&fc60/kernel/Regularizer/mul/x:output:0$fc60/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/mul
fc60/kernel/Regularizer/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
fc60/kernel/Regularizer/add/x­
fc60/kernel/Regularizer/addAddV2&fc60/kernel/Regularizer/add/x:output:0fc60/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: 2
fc60/kernel/Regularizer/addb
IdentityIdentityfc60/kernel/Regularizer/add:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:: 

_output_shapes
: "¯L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ã
serving_default¯
W
firstConv64_inputB
#serving_default_firstConv64_input:0ÿÿÿÿÿÿÿÿÿ8
fc600
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ<tensorflow/serving/predict:¶¤
×T
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
y__call__
*z&call_and_return_all_conditional_losses
{_default_save_signature"Q
_tf_keras_sequentialöP{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "sequential", "layers": [{"class_name": "Conv2D", "config": {"name": "firstConv64", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 2]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "secondConv64", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "firstConv128", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "secondConv128", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flat", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "fc128", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "fc60", "trainable": true, "dtype": "float32", "units": 60, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 2]}}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 2]}, "is_graph_network": true, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "Conv2D", "config": {"name": "firstConv64", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 2]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "secondConv64", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "firstConv128", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "secondConv128", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flat", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "fc128", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "fc60", "trainable": true, "dtype": "float32", "units": 60, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 2]}}}, "training_config": {"loss": "categorical_crossentropy", "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "sample_weight_mode": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.016383998095989227, "decay": 0.0, "momentum": 0.949999988079071, "nesterov": false}}}}
Í

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"¨

_tf_keras_layer
{"class_name": "Conv2D", "name": "firstConv64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 2]}, "stateful": false, "config": {"name": "firstConv64", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 2]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 2]}}
Ó

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
~__call__
*&call_and_return_all_conditional_losses"®

_tf_keras_layer
{"class_name": "Conv2D", "name": "secondConv64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "stateful": false, "config": {"name": "secondConv64", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
Ö

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"¯

_tf_keras_layer
{"class_name": "Conv2D", "name": "firstConv128", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "stateful": false, "config": {"name": "firstConv128", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 64]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 64]}}
Ü

 kernel
!bias
"trainable_variables
#	variables
$regularization_losses
%	keras_api
__call__
+&call_and_return_all_conditional_losses"µ

_tf_keras_layer
{"class_name": "Conv2D", "name": "secondConv128", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "stateful": false, "config": {"name": "secondConv128", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
»
&trainable_variables
'	variables
(regularization_losses
)	keras_api
__call__
+&call_and_return_all_conditional_losses"ª
_tf_keras_layer{"class_name": "Flatten", "name": "flat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "flat", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}


*kernel
+bias
,trainable_variables
-	variables
.regularization_losses
/	keras_api
__call__
+&call_and_return_all_conditional_losses"ï
_tf_keras_layerÕ{"class_name": "Dense", "name": "fc128", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "fc128", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8192}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8192]}}


0kernel
1bias
2trainable_variables
3	variables
4regularization_losses
5	keras_api
__call__
+&call_and_return_all_conditional_losses"í
_tf_keras_layerÓ{"class_name": "Dense", "name": "fc60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "fc60", "trainable": true, "dtype": "float32", "units": 60, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L1L2", "config": {"l1": 0.0, "l2": 0.0005000000237487257}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}

	6decay
7learning_rate
8momentum
9itermomentummmomentumnmomentumomomentumpmomentumqmomentumr momentums!momentumt*momentumu+momentumv0momentumw1momentumx"
	optimizer
v
0
1
2
3
4
5
 6
!7
*8
+9
010
111"
trackable_list_wrapper
v
0
1
2
3
4
5
 6
!7
*8
+9
010
111"
trackable_list_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
Ê
	trainable_variables

	variables

:layers
;layer_regularization_losses
<metrics
=non_trainable_variables
regularization_losses
>layer_metrics
y__call__
{_default_save_signature
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
,:*@2firstConv64/kernel
:@2firstConv64/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
­
trainable_variables
	variables

?layers
@layer_regularization_losses
Ametrics
Bnon_trainable_variables
regularization_losses
Clayer_metrics
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
-:+@@2secondConv64/kernel
:@2secondConv64/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
­
trainable_variables
	variables

Dlayers
Elayer_regularization_losses
Fmetrics
Gnon_trainable_variables
regularization_losses
Hlayer_metrics
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
.:,@2firstConv128/kernel
 :2firstConv128/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
°
trainable_variables
	variables

Ilayers
Jlayer_regularization_losses
Kmetrics
Lnon_trainable_variables
regularization_losses
Mlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
0:.2secondConv128/kernel
!:2secondConv128/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
°
"trainable_variables
#	variables

Nlayers
Olayer_regularization_losses
Pmetrics
Qnon_trainable_variables
$regularization_losses
Rlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
&trainable_variables
'	variables

Slayers
Tlayer_regularization_losses
Umetrics
Vnon_trainable_variables
(regularization_losses
Wlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :
@2fc128/kernel
:2
fc128/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
°
,trainable_variables
-	variables

Xlayers
Ylayer_regularization_losses
Zmetrics
[non_trainable_variables
.regularization_losses
\layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	<2fc60/kernel
:<2	fc60/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
(
0"
trackable_list_wrapper
°
2trainable_variables
3	variables

]layers
^layer_regularization_losses
_metrics
`non_trainable_variables
4regularization_losses
alayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
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
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
0"
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
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
»
	dtotal
	ecount
f	variables
g	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ÿ
	htotal
	icount
j
_fn_kwargs
k	variables
l	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
d0
e1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
h0
i1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
7:5@2SGD/firstConv64/kernel/momentum
):'@2SGD/firstConv64/bias/momentum
8:6@@2 SGD/secondConv64/kernel/momentum
*:(@2SGD/secondConv64/bias/momentum
9:7@2 SGD/firstConv128/kernel/momentum
+:)2SGD/firstConv128/bias/momentum
;:92!SGD/secondConv128/kernel/momentum
,:*2SGD/secondConv128/bias/momentum
+:)
@2SGD/fc128/kernel/momentum
$:"2SGD/fc128/bias/momentum
):'	<2SGD/fc60/kernel/momentum
": <2SGD/fc60/bias/momentum
ú2÷
+__inference_sequential_layer_call_fn_518682
+__inference_sequential_layer_call_fn_518376
+__inference_sequential_layer_call_fn_518264
+__inference_sequential_layer_call_fn_518711À
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
æ2ã
F__inference_sequential_layer_call_and_return_conditional_losses_518557
F__inference_sequential_layer_call_and_return_conditional_losses_518151
F__inference_sequential_layer_call_and_return_conditional_losses_518653
F__inference_sequential_layer_call_and_return_conditional_losses_518068À
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
ñ2î
!__inference__wrapped_model_517791È
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
annotationsª *8¢5
30
firstConv64_inputÿÿÿÿÿÿÿÿÿ
2
,__inference_firstConv64_layer_call_fn_517821×
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¦2£
G__inference_firstConv64_layer_call_and_return_conditional_losses_517811×
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
-__inference_secondConv64_layer_call_fn_517851×
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
§2¤
H__inference_secondConv64_layer_call_and_return_conditional_losses_517841×
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
2
-__inference_firstConv128_layer_call_fn_517881×
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
§2¤
H__inference_firstConv128_layer_call_and_return_conditional_losses_517871×
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
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
2
.__inference_secondConv128_layer_call_fn_517911Ø
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
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
©2¦
I__inference_secondConv128_layer_call_and_return_conditional_losses_517901Ø
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
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ï2Ì
%__inference_flat_layer_call_fn_518754¢
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
ê2ç
@__inference_flat_layer_call_and_return_conditional_losses_518749¢
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
Ð2Í
&__inference_fc128_layer_call_fn_518790¢
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
ë2è
A__inference_fc128_layer_call_and_return_conditional_losses_518781¢
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
Ï2Ì
%__inference_fc60_layer_call_fn_518826¢
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
ê2ç
@__inference_fc60_layer_call_and_return_conditional_losses_518817¢
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
³2°
__inference_loss_fn_0_518839
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_1_518852
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_2_518865
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_3_518878
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_4_518891
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_5_518904
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
=B;
$__inference_signature_wrapper_518461firstConv64_input¤
!__inference__wrapped_model_517791 !*+01B¢?
8¢5
30
firstConv64_inputÿÿÿÿÿÿÿÿÿ
ª "+ª(
&
fc60
fc60ÿÿÿÿÿÿÿÿÿ<£
A__inference_fc128_layer_call_and_return_conditional_losses_518781^*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_fc128_layer_call_fn_518790Q*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¡
@__inference_fc60_layer_call_and_return_conditional_losses_518817]010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 y
%__inference_fc60_layer_call_fn_518826P010¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ<Þ
H__inference_firstConv128_layer_call_and_return_conditional_losses_517871I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¶
-__inference_firstConv128_layer_call_fn_517881I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÜ
G__inference_firstConv64_layer_call_and_return_conditional_losses_517811I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ´
,__inference_firstConv64_layer_call_fn_517821I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¦
@__inference_flat_layer_call_and_return_conditional_losses_518749b8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ@
 ~
%__inference_flat_layer_call_fn_518754U8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@;
__inference_loss_fn_0_518839¢

¢ 
ª " ;
__inference_loss_fn_1_518852¢

¢ 
ª " ;
__inference_loss_fn_2_518865¢

¢ 
ª " ;
__inference_loss_fn_3_518878 ¢

¢ 
ª " ;
__inference_loss_fn_4_518891*¢

¢ 
ª " ;
__inference_loss_fn_5_5189040¢

¢ 
ª " à
I__inference_secondConv128_layer_call_and_return_conditional_losses_517901 !J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
.__inference_secondConv128_layer_call_fn_517911 !J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÝ
H__inference_secondConv64_layer_call_and_return_conditional_losses_517841I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 µ
-__inference_secondConv64_layer_call_fn_517851I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ì
F__inference_sequential_layer_call_and_return_conditional_losses_518068 !*+01J¢G
@¢=
30
firstConv64_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 Ì
F__inference_sequential_layer_call_and_return_conditional_losses_518151 !*+01J¢G
@¢=
30
firstConv64_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 À
F__inference_sequential_layer_call_and_return_conditional_losses_518557v !*+01?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 À
F__inference_sequential_layer_call_and_return_conditional_losses_518653v !*+01?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 £
+__inference_sequential_layer_call_fn_518264t !*+01J¢G
@¢=
30
firstConv64_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ<£
+__inference_sequential_layer_call_fn_518376t !*+01J¢G
@¢=
30
firstConv64_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ<
+__inference_sequential_layer_call_fn_518682i !*+01?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ<
+__inference_sequential_layer_call_fn_518711i !*+01?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ<½
$__inference_signature_wrapper_518461 !*+01W¢T
¢ 
MªJ
H
firstConv64_input30
firstConv64_inputÿÿÿÿÿÿÿÿÿ"+ª(
&
fc60
fc60ÿÿÿÿÿÿÿÿÿ<