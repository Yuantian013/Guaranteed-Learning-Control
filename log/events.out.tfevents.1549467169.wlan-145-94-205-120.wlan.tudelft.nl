       �K"	  @���Abrain.Event:2�S�^;�     /M�O	�|���A"��
h
statePlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
4critic/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*&
_class
loc:@critic/dense/kernel*
valueB"   d   
�
2critic/dense/kernel/Initializer/random_uniform/minConst*&
_class
loc:@critic/dense/kernel*
valueB
 *��u�*
dtype0*
_output_shapes
: 
�
2critic/dense/kernel/Initializer/random_uniform/maxConst*&
_class
loc:@critic/dense/kernel*
valueB
 *��u>*
dtype0*
_output_shapes
: 
�
<critic/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform4critic/dense/kernel/Initializer/random_uniform/shape*
T0*&
_class
loc:@critic/dense/kernel*
seed2 *
dtype0*
_output_shapes

:d*

seed 
�
2critic/dense/kernel/Initializer/random_uniform/subSub2critic/dense/kernel/Initializer/random_uniform/max2critic/dense/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes
: 
�
2critic/dense/kernel/Initializer/random_uniform/mulMul<critic/dense/kernel/Initializer/random_uniform/RandomUniform2critic/dense/kernel/Initializer/random_uniform/sub*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
.critic/dense/kernel/Initializer/random_uniformAdd2critic/dense/kernel/Initializer/random_uniform/mul2critic/dense/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
critic/dense/kernel
VariableV2*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *&
_class
loc:@critic/dense/kernel
�
critic/dense/kernel/AssignAssigncritic/dense/kernel.critic/dense/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0*&
_class
loc:@critic/dense/kernel
�
critic/dense/kernel/readIdentitycritic/dense/kernel*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
#critic/dense/bias/Initializer/zerosConst*$
_class
loc:@critic/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
critic/dense/bias
VariableV2*
shape:d*
dtype0*
_output_shapes
:d*
shared_name *$
_class
loc:@critic/dense/bias*
	container 
�
critic/dense/bias/AssignAssigncritic/dense/bias#critic/dense/bias/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
:d
�
critic/dense/bias/readIdentitycritic/dense/bias*$
_class
loc:@critic/dense/bias*
_output_shapes
:d*
T0
�
critic/dense/MatMulMatMulstatecritic/dense/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( 
�
critic/dense/BiasAddBiasAddcritic/dense/MatMulcritic/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������d
a
critic/dense/ReluRelucritic/dense/BiasAdd*'
_output_shapes
:���������d*
T0
�
6critic/dense_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@critic/dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
4critic/dense_1/kernel/Initializer/random_uniform/minConst*(
_class
loc:@critic/dense_1/kernel*
valueB
 *<�y�*
dtype0*
_output_shapes
: 
�
4critic/dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *(
_class
loc:@critic/dense_1/kernel*
valueB
 *<�y>*
dtype0
�
>critic/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6critic/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*(
_class
loc:@critic/dense_1/kernel*
seed2 *
dtype0*
_output_shapes

:d
�
4critic/dense_1/kernel/Initializer/random_uniform/subSub4critic/dense_1/kernel/Initializer/random_uniform/max4critic/dense_1/kernel/Initializer/random_uniform/min*(
_class
loc:@critic/dense_1/kernel*
_output_shapes
: *
T0
�
4critic/dense_1/kernel/Initializer/random_uniform/mulMul>critic/dense_1/kernel/Initializer/random_uniform/RandomUniform4critic/dense_1/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d
�
0critic/dense_1/kernel/Initializer/random_uniformAdd4critic/dense_1/kernel/Initializer/random_uniform/mul4critic/dense_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d
�
critic/dense_1/kernel
VariableV2*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *(
_class
loc:@critic/dense_1/kernel
�
critic/dense_1/kernel/AssignAssigncritic/dense_1/kernel0critic/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@critic/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
critic/dense_1/kernel/readIdentitycritic/dense_1/kernel*
T0*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d
�
%critic/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*&
_class
loc:@critic/dense_1/bias*
valueB*    
�
critic/dense_1/bias
VariableV2*
_output_shapes
:*
shared_name *&
_class
loc:@critic/dense_1/bias*
	container *
shape:*
dtype0
�
critic/dense_1/bias/AssignAssigncritic/dense_1/bias%critic/dense_1/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@critic/dense_1/bias*
validate_shape(*
_output_shapes
:
�
critic/dense_1/bias/readIdentitycritic/dense_1/bias*
T0*&
_class
loc:@critic/dense_1/bias*
_output_shapes
:
�
critic/dense_1/MatMulMatMulcritic/dense/Relucritic/dense_1/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
critic/dense_1/BiasAddBiasAddcritic/dense_1/MatMulcritic/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
v
critic/discounted_rPlaceholder*'
_output_shapes
:���������*
shape:���������*
dtype0
p

critic/subSubcritic/discounted_rcritic/dense_1/BiasAdd*
T0*'
_output_shapes
:���������
U
critic/SquareSquare
critic/sub*
T0*'
_output_shapes
:���������
]
critic/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
n
critic/MeanMeancritic/Squarecritic/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Y
critic/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
_
critic/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
critic/gradients/FillFillcritic/gradients/Shapecritic/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
/critic/gradients/critic/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
)critic/gradients/critic/Mean_grad/ReshapeReshapecritic/gradients/Fill/critic/gradients/critic/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
t
'critic/gradients/critic/Mean_grad/ShapeShapecritic/Square*
_output_shapes
:*
T0*
out_type0
�
&critic/gradients/critic/Mean_grad/TileTile)critic/gradients/critic/Mean_grad/Reshape'critic/gradients/critic/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:���������
v
)critic/gradients/critic/Mean_grad/Shape_1Shapecritic/Square*
T0*
out_type0*
_output_shapes
:
l
)critic/gradients/critic/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
q
'critic/gradients/critic/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
&critic/gradients/critic/Mean_grad/ProdProd)critic/gradients/critic/Mean_grad/Shape_1'critic/gradients/critic/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
s
)critic/gradients/critic/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
(critic/gradients/critic/Mean_grad/Prod_1Prod)critic/gradients/critic/Mean_grad/Shape_2)critic/gradients/critic/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
m
+critic/gradients/critic/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
)critic/gradients/critic/Mean_grad/MaximumMaximum(critic/gradients/critic/Mean_grad/Prod_1+critic/gradients/critic/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
*critic/gradients/critic/Mean_grad/floordivFloorDiv&critic/gradients/critic/Mean_grad/Prod)critic/gradients/critic/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
&critic/gradients/critic/Mean_grad/CastCast*critic/gradients/critic/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
)critic/gradients/critic/Mean_grad/truedivRealDiv&critic/gradients/critic/Mean_grad/Tile&critic/gradients/critic/Mean_grad/Cast*
T0*'
_output_shapes
:���������
�
)critic/gradients/critic/Square_grad/ConstConst*^critic/gradients/critic/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
'critic/gradients/critic/Square_grad/MulMul
critic/sub)critic/gradients/critic/Square_grad/Const*
T0*'
_output_shapes
:���������
�
)critic/gradients/critic/Square_grad/Mul_1Mul)critic/gradients/critic/Mean_grad/truediv'critic/gradients/critic/Square_grad/Mul*'
_output_shapes
:���������*
T0
y
&critic/gradients/critic/sub_grad/ShapeShapecritic/discounted_r*
T0*
out_type0*
_output_shapes
:
~
(critic/gradients/critic/sub_grad/Shape_1Shapecritic/dense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
�
6critic/gradients/critic/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&critic/gradients/critic/sub_grad/Shape(critic/gradients/critic/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$critic/gradients/critic/sub_grad/SumSum)critic/gradients/critic/Square_grad/Mul_16critic/gradients/critic/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
(critic/gradients/critic/sub_grad/ReshapeReshape$critic/gradients/critic/sub_grad/Sum&critic/gradients/critic/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&critic/gradients/critic/sub_grad/Sum_1Sum)critic/gradients/critic/Square_grad/Mul_18critic/gradients/critic/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
v
$critic/gradients/critic/sub_grad/NegNeg&critic/gradients/critic/sub_grad/Sum_1*
T0*
_output_shapes
:
�
*critic/gradients/critic/sub_grad/Reshape_1Reshape$critic/gradients/critic/sub_grad/Neg(critic/gradients/critic/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
1critic/gradients/critic/sub_grad/tuple/group_depsNoOp)^critic/gradients/critic/sub_grad/Reshape+^critic/gradients/critic/sub_grad/Reshape_1
�
9critic/gradients/critic/sub_grad/tuple/control_dependencyIdentity(critic/gradients/critic/sub_grad/Reshape2^critic/gradients/critic/sub_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*;
_class1
/-loc:@critic/gradients/critic/sub_grad/Reshape
�
;critic/gradients/critic/sub_grad/tuple/control_dependency_1Identity*critic/gradients/critic/sub_grad/Reshape_12^critic/gradients/critic/sub_grad/tuple/group_deps*
T0*=
_class3
1/loc:@critic/gradients/critic/sub_grad/Reshape_1*'
_output_shapes
:���������
�
8critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad;critic/gradients/critic/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC*
_output_shapes
:
�
=critic/gradients/critic/dense_1/BiasAdd_grad/tuple/group_depsNoOp9^critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGrad<^critic/gradients/critic/sub_grad/tuple/control_dependency_1
�
Ecritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity;critic/gradients/critic/sub_grad/tuple/control_dependency_1>^critic/gradients/critic/dense_1/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@critic/gradients/critic/sub_grad/Reshape_1*'
_output_shapes
:���������*
T0
�
Gcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity8critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGrad>^critic/gradients/critic/dense_1/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
2critic/gradients/critic/dense_1/MatMul_grad/MatMulMatMulEcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependencycritic/dense_1/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(*
T0
�
4critic/gradients/critic/dense_1/MatMul_grad/MatMul_1MatMulcritic/dense/ReluEcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:d*
transpose_a(*
transpose_b( 
�
<critic/gradients/critic/dense_1/MatMul_grad/tuple/group_depsNoOp3^critic/gradients/critic/dense_1/MatMul_grad/MatMul5^critic/gradients/critic/dense_1/MatMul_grad/MatMul_1
�
Dcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependencyIdentity2critic/gradients/critic/dense_1/MatMul_grad/MatMul=^critic/gradients/critic/dense_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@critic/gradients/critic/dense_1/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
Fcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependency_1Identity4critic/gradients/critic/dense_1/MatMul_grad/MatMul_1=^critic/gradients/critic/dense_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@critic/gradients/critic/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:d
�
0critic/gradients/critic/dense/Relu_grad/ReluGradReluGradDcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependencycritic/dense/Relu*
T0*'
_output_shapes
:���������d
�
6critic/gradients/critic/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0critic/gradients/critic/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:d
�
;critic/gradients/critic/dense/BiasAdd_grad/tuple/group_depsNoOp7^critic/gradients/critic/dense/BiasAdd_grad/BiasAddGrad1^critic/gradients/critic/dense/Relu_grad/ReluGrad
�
Ccritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependencyIdentity0critic/gradients/critic/dense/Relu_grad/ReluGrad<^critic/gradients/critic/dense/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@critic/gradients/critic/dense/Relu_grad/ReluGrad*'
_output_shapes
:���������d
�
Ecritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependency_1Identity6critic/gradients/critic/dense/BiasAdd_grad/BiasAddGrad<^critic/gradients/critic/dense/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@critic/gradients/critic/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
�
0critic/gradients/critic/dense/MatMul_grad/MatMulMatMulCcritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependencycritic/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
2critic/gradients/critic/dense/MatMul_grad/MatMul_1MatMulstateCcritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:d*
transpose_a(
�
:critic/gradients/critic/dense/MatMul_grad/tuple/group_depsNoOp1^critic/gradients/critic/dense/MatMul_grad/MatMul3^critic/gradients/critic/dense/MatMul_grad/MatMul_1
�
Bcritic/gradients/critic/dense/MatMul_grad/tuple/control_dependencyIdentity0critic/gradients/critic/dense/MatMul_grad/MatMul;^critic/gradients/critic/dense/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@critic/gradients/critic/dense/MatMul_grad/MatMul*'
_output_shapes
:���������
�
Dcritic/gradients/critic/dense/MatMul_grad/tuple/control_dependency_1Identity2critic/gradients/critic/dense/MatMul_grad/MatMul_1;^critic/gradients/critic/dense/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@critic/gradients/critic/dense/MatMul_grad/MatMul_1*
_output_shapes

:d
�
 critic/beta1_power/initial_valueConst*$
_class
loc:@critic/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
critic/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape: 
�
critic/beta1_power/AssignAssigncritic/beta1_power critic/beta1_power/initial_value*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
~
critic/beta1_power/readIdentitycritic/beta1_power*$
_class
loc:@critic/dense/bias*
_output_shapes
: *
T0
�
 critic/beta2_power/initial_valueConst*$
_class
loc:@critic/dense/bias*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
critic/beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape: 
�
critic/beta2_power/AssignAssigncritic/beta2_power critic/beta2_power/initial_value*
_output_shapes
: *
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(
~
critic/beta2_power/readIdentitycritic/beta2_power*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
: 
�
1critic/critic/dense/kernel/Adam/Initializer/zerosConst*&
_class
loc:@critic/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
critic/critic/dense/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *&
_class
loc:@critic/dense/kernel*
	container *
shape
:d
�
&critic/critic/dense/kernel/Adam/AssignAssigncritic/critic/dense/kernel/Adam1critic/critic/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@critic/dense/kernel*
validate_shape(*
_output_shapes

:d
�
$critic/critic/dense/kernel/Adam/readIdentitycritic/critic/dense/kernel/Adam*
_output_shapes

:d*
T0*&
_class
loc:@critic/dense/kernel
�
3critic/critic/dense/kernel/Adam_1/Initializer/zerosConst*&
_class
loc:@critic/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
!critic/critic/dense/kernel/Adam_1
VariableV2*&
_class
loc:@critic/dense/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name 
�
(critic/critic/dense/kernel/Adam_1/AssignAssign!critic/critic/dense/kernel/Adam_13critic/critic/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:d*
use_locking(*
T0*&
_class
loc:@critic/dense/kernel*
validate_shape(
�
&critic/critic/dense/kernel/Adam_1/readIdentity!critic/critic/dense/kernel/Adam_1*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
/critic/critic/dense/bias/Adam/Initializer/zerosConst*$
_class
loc:@critic/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
critic/critic/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape:d
�
$critic/critic/dense/bias/Adam/AssignAssigncritic/critic/dense/bias/Adam/critic/critic/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
:d
�
"critic/critic/dense/bias/Adam/readIdentitycritic/critic/dense/bias/Adam*
_output_shapes
:d*
T0*$
_class
loc:@critic/dense/bias
�
1critic/critic/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@critic/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
critic/critic/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape:d
�
&critic/critic/dense/bias/Adam_1/AssignAssigncritic/critic/dense/bias/Adam_11critic/critic/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
:d
�
$critic/critic/dense/bias/Adam_1/readIdentitycritic/critic/dense/bias/Adam_1*$
_class
loc:@critic/dense/bias*
_output_shapes
:d*
T0
�
3critic/critic/dense_1/kernel/Adam/Initializer/zerosConst*(
_class
loc:@critic/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
!critic/critic/dense_1/kernel/Adam
VariableV2*(
_class
loc:@critic/dense_1/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name 
�
(critic/critic/dense_1/kernel/Adam/AssignAssign!critic/critic/dense_1/kernel/Adam3critic/critic/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@critic/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
&critic/critic/dense_1/kernel/Adam/readIdentity!critic/critic/dense_1/kernel/Adam*
T0*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d
�
5critic/critic/dense_1/kernel/Adam_1/Initializer/zerosConst*(
_class
loc:@critic/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
#critic/critic/dense_1/kernel/Adam_1
VariableV2*
shared_name *(
_class
loc:@critic/dense_1/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
*critic/critic/dense_1/kernel/Adam_1/AssignAssign#critic/critic/dense_1/kernel/Adam_15critic/critic/dense_1/kernel/Adam_1/Initializer/zeros*
_output_shapes

:d*
use_locking(*
T0*(
_class
loc:@critic/dense_1/kernel*
validate_shape(
�
(critic/critic/dense_1/kernel/Adam_1/readIdentity#critic/critic/dense_1/kernel/Adam_1*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d*
T0
�
1critic/critic/dense_1/bias/Adam/Initializer/zerosConst*&
_class
loc:@critic/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
critic/critic/dense_1/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *&
_class
loc:@critic/dense_1/bias*
	container *
shape:
�
&critic/critic/dense_1/bias/Adam/AssignAssigncritic/critic/dense_1/bias/Adam1critic/critic/dense_1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@critic/dense_1/bias
�
$critic/critic/dense_1/bias/Adam/readIdentitycritic/critic/dense_1/bias/Adam*
_output_shapes
:*
T0*&
_class
loc:@critic/dense_1/bias
�
3critic/critic/dense_1/bias/Adam_1/Initializer/zerosConst*&
_class
loc:@critic/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
!critic/critic/dense_1/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *&
_class
loc:@critic/dense_1/bias*
	container 
�
(critic/critic/dense_1/bias/Adam_1/AssignAssign!critic/critic/dense_1/bias/Adam_13critic/critic/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@critic/dense_1/bias*
validate_shape(*
_output_shapes
:
�
&critic/critic/dense_1/bias/Adam_1/readIdentity!critic/critic/dense_1/bias/Adam_1*
T0*&
_class
loc:@critic/dense_1/bias*
_output_shapes
:
^
critic/Adam/learning_rateConst*
_output_shapes
: *
valueB
 *�Q9*
dtype0
V
critic/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
V
critic/Adam/beta2Const*
_output_shapes
: *
valueB
 *w�?*
dtype0
X
critic/Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
0critic/Adam/update_critic/dense/kernel/ApplyAdam	ApplyAdamcritic/dense/kernelcritic/critic/dense/kernel/Adam!critic/critic/dense/kernel/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonDcritic/gradients/critic/dense/MatMul_grad/tuple/control_dependency_1*
T0*&
_class
loc:@critic/dense/kernel*
use_nesterov( *
_output_shapes

:d*
use_locking( 
�
.critic/Adam/update_critic/dense/bias/ApplyAdam	ApplyAdamcritic/dense/biascritic/critic/dense/bias/Adamcritic/critic/dense/bias/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonEcritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@critic/dense/bias*
use_nesterov( *
_output_shapes
:d
�
2critic/Adam/update_critic/dense_1/kernel/ApplyAdam	ApplyAdamcritic/dense_1/kernel!critic/critic/dense_1/kernel/Adam#critic/critic/dense_1/kernel/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonFcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:d*
use_locking( *
T0*(
_class
loc:@critic/dense_1/kernel
�
0critic/Adam/update_critic/dense_1/bias/ApplyAdam	ApplyAdamcritic/dense_1/biascritic/critic/dense_1/bias/Adam!critic/critic/dense_1/bias/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonGcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*&
_class
loc:@critic/dense_1/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
critic/Adam/mulMulcritic/beta1_power/readcritic/Adam/beta1/^critic/Adam/update_critic/dense/bias/ApplyAdam1^critic/Adam/update_critic/dense/kernel/ApplyAdam1^critic/Adam/update_critic/dense_1/bias/ApplyAdam3^critic/Adam/update_critic/dense_1/kernel/ApplyAdam*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
: 
�
critic/Adam/AssignAssigncritic/beta1_powercritic/Adam/mul*
_output_shapes
: *
use_locking( *
T0*$
_class
loc:@critic/dense/bias*
validate_shape(
�
critic/Adam/mul_1Mulcritic/beta2_power/readcritic/Adam/beta2/^critic/Adam/update_critic/dense/bias/ApplyAdam1^critic/Adam/update_critic/dense/kernel/ApplyAdam1^critic/Adam/update_critic/dense_1/bias/ApplyAdam3^critic/Adam/update_critic/dense_1/kernel/ApplyAdam*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
: 
�
critic/Adam/Assign_1Assigncritic/beta2_powercritic/Adam/mul_1*
use_locking( *
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
: 
�
critic/AdamNoOp^critic/Adam/Assign^critic/Adam/Assign_1/^critic/Adam/update_critic/dense/bias/ApplyAdam1^critic/Adam/update_critic/dense/kernel/ApplyAdam1^critic/Adam/update_critic/dense_1/bias/ApplyAdam3^critic/Adam/update_critic/dense_1/kernel/ApplyAdam
�
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@pi/dense/kernel*
valueB"   d   *
dtype0
�
.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *��u�*
dtype0*
_output_shapes
: 
�
.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *��u>*
dtype0*
_output_shapes
: 
�
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2 
�
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@pi/dense/kernel
�
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d*
T0
�
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d
�
pi/dense/kernel
VariableV2*
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *"
_class
loc:@pi/dense/kernel*
	container 
�
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:d
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d
�
pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
pi/dense/bias
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d
�
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:d
t
pi/dense/bias/readIdentitypi/dense/bias*
_output_shapes
:d*
T0* 
_class
loc:@pi/dense/bias
�
pi/dense/MatMulMatMulstatepi/dense/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( *
T0
�
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������d
Y
pi/dense/ReluRelupi/dense/BiasAdd*
T0*'
_output_shapes
:���������d
�
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*$
_class
loc:@pi/dense_1/kernel*
valueB"d      
�
0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *<�y�*
dtype0*
_output_shapes
: 
�
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:d*

seed *
T0*$
_class
loc:@pi/dense_1/kernel
�
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
�
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*$
_class
loc:@pi/dense_1/kernel
�
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:d*
T0
�
pi/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:d
�
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
_output_shapes

:d*
T0*$
_class
loc:@pi/dense_1/kernel
�
!pi/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias*
valueB*    
�
pi/dense_1/bias
VariableV2*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
�
pi/dense_1/MatMulMatMulpi/dense/Relupi/dense_1/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
]
pi/dense_1/TanhTanhpi/dense_1/BiasAdd*'
_output_shapes
:���������*
T0
M
pi/mul/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
Z
pi/mulMulpi/mul/xpi/dense_1/Tanh*
T0*'
_output_shapes
:���������
�
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*$
_class
loc:@pi/dense_2/kernel*
valueB"d      
�
0pi/dense_2/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *<�y�*
dtype0*
_output_shapes
: 
�
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:d*

seed *
T0*$
_class
loc:@pi/dense_2/kernel
�
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_2/kernel
�
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:d
�
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:d*
T0
�
pi/dense_2/kernel
VariableV2*
_output_shapes

:d*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:d*
dtype0
�
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel
�
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:d
�
!pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0
�
pi/dense_2/bias
VariableV2*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
�
pi/dense_2/MatMulMatMulpi/dense/Relupi/dense_2/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
e
pi/dense_2/SoftplusSoftpluspi/dense_2/BiasAdd*
T0*'
_output_shapes
:���������
S
pi/Normal/locIdentitypi/mul*
T0*'
_output_shapes
:���������
b
pi/Normal/scaleIdentitypi/dense_2/Softplus*
T0*'
_output_shapes
:���������
�
3oldpi/dense/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@oldpi/dense/kernel*
valueB"   d   *
dtype0*
_output_shapes
:
�
1oldpi/dense/kernel/Initializer/random_uniform/minConst*%
_class
loc:@oldpi/dense/kernel*
valueB
 *��u�*
dtype0*
_output_shapes
: 
�
1oldpi/dense/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@oldpi/dense/kernel*
valueB
 *��u>*
dtype0*
_output_shapes
: 
�
;oldpi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform3oldpi/dense/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@oldpi/dense/kernel*
seed2 *
dtype0*
_output_shapes

:d*

seed 
�
1oldpi/dense/kernel/Initializer/random_uniform/subSub1oldpi/dense/kernel/Initializer/random_uniform/max1oldpi/dense/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@oldpi/dense/kernel*
_output_shapes
: 
�
1oldpi/dense/kernel/Initializer/random_uniform/mulMul;oldpi/dense/kernel/Initializer/random_uniform/RandomUniform1oldpi/dense/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@oldpi/dense/kernel*
_output_shapes

:d
�
-oldpi/dense/kernel/Initializer/random_uniformAdd1oldpi/dense/kernel/Initializer/random_uniform/mul1oldpi/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:d*
T0*%
_class
loc:@oldpi/dense/kernel
�
oldpi/dense/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *%
_class
loc:@oldpi/dense/kernel*
	container *
shape
:d
�
oldpi/dense/kernel/AssignAssignoldpi/dense/kernel-oldpi/dense/kernel/Initializer/random_uniform*
T0*%
_class
loc:@oldpi/dense/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
oldpi/dense/kernel/readIdentityoldpi/dense/kernel*
T0*%
_class
loc:@oldpi/dense/kernel*
_output_shapes

:d
�
"oldpi/dense/bias/Initializer/zerosConst*#
_class
loc:@oldpi/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
oldpi/dense/bias
VariableV2*#
_class
loc:@oldpi/dense/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name 
�
oldpi/dense/bias/AssignAssignoldpi/dense/bias"oldpi/dense/bias/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@oldpi/dense/bias*
validate_shape(*
_output_shapes
:d
}
oldpi/dense/bias/readIdentityoldpi/dense/bias*
T0*#
_class
loc:@oldpi/dense/bias*
_output_shapes
:d
�
oldpi/dense/MatMulMatMulstateoldpi/dense/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( 
�
oldpi/dense/BiasAddBiasAddoldpi/dense/MatMuloldpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������d
_
oldpi/dense/ReluReluoldpi/dense/BiasAdd*'
_output_shapes
:���������d*
T0
�
5oldpi/dense_1/kernel/Initializer/random_uniform/shapeConst*'
_class
loc:@oldpi/dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
3oldpi/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *'
_class
loc:@oldpi/dense_1/kernel*
valueB
 *<�y�
�
3oldpi/dense_1/kernel/Initializer/random_uniform/maxConst*'
_class
loc:@oldpi/dense_1/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
=oldpi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform5oldpi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*'
_class
loc:@oldpi/dense_1/kernel*
seed2 
�
3oldpi/dense_1/kernel/Initializer/random_uniform/subSub3oldpi/dense_1/kernel/Initializer/random_uniform/max3oldpi/dense_1/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@oldpi/dense_1/kernel*
_output_shapes
: 
�
3oldpi/dense_1/kernel/Initializer/random_uniform/mulMul=oldpi/dense_1/kernel/Initializer/random_uniform/RandomUniform3oldpi/dense_1/kernel/Initializer/random_uniform/sub*
T0*'
_class
loc:@oldpi/dense_1/kernel*
_output_shapes

:d
�
/oldpi/dense_1/kernel/Initializer/random_uniformAdd3oldpi/dense_1/kernel/Initializer/random_uniform/mul3oldpi/dense_1/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@oldpi/dense_1/kernel*
_output_shapes

:d
�
oldpi/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *'
_class
loc:@oldpi/dense_1/kernel*
	container *
shape
:d
�
oldpi/dense_1/kernel/AssignAssignoldpi/dense_1/kernel/oldpi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*'
_class
loc:@oldpi/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
oldpi/dense_1/kernel/readIdentityoldpi/dense_1/kernel*
_output_shapes

:d*
T0*'
_class
loc:@oldpi/dense_1/kernel
�
$oldpi/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*%
_class
loc:@oldpi/dense_1/bias*
valueB*    
�
oldpi/dense_1/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@oldpi/dense_1/bias*
	container 
�
oldpi/dense_1/bias/AssignAssignoldpi/dense_1/bias$oldpi/dense_1/bias/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@oldpi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
oldpi/dense_1/bias/readIdentityoldpi/dense_1/bias*
T0*%
_class
loc:@oldpi/dense_1/bias*
_output_shapes
:
�
oldpi/dense_1/MatMulMatMuloldpi/dense/Reluoldpi/dense_1/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
oldpi/dense_1/BiasAddBiasAddoldpi/dense_1/MatMuloldpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
c
oldpi/dense_1/TanhTanholdpi/dense_1/BiasAdd*
T0*'
_output_shapes
:���������
P
oldpi/mul/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
c
	oldpi/mulMuloldpi/mul/xoldpi/dense_1/Tanh*
T0*'
_output_shapes
:���������
�
5oldpi/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*'
_class
loc:@oldpi/dense_2/kernel*
valueB"d      
�
3oldpi/dense_2/kernel/Initializer/random_uniform/minConst*'
_class
loc:@oldpi/dense_2/kernel*
valueB
 *<�y�*
dtype0*
_output_shapes
: 
�
3oldpi/dense_2/kernel/Initializer/random_uniform/maxConst*'
_class
loc:@oldpi/dense_2/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
=oldpi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform5oldpi/dense_2/kernel/Initializer/random_uniform/shape*
T0*'
_class
loc:@oldpi/dense_2/kernel*
seed2 *
dtype0*
_output_shapes

:d*

seed 
�
3oldpi/dense_2/kernel/Initializer/random_uniform/subSub3oldpi/dense_2/kernel/Initializer/random_uniform/max3oldpi/dense_2/kernel/Initializer/random_uniform/min*'
_class
loc:@oldpi/dense_2/kernel*
_output_shapes
: *
T0
�
3oldpi/dense_2/kernel/Initializer/random_uniform/mulMul=oldpi/dense_2/kernel/Initializer/random_uniform/RandomUniform3oldpi/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*'
_class
loc:@oldpi/dense_2/kernel
�
/oldpi/dense_2/kernel/Initializer/random_uniformAdd3oldpi/dense_2/kernel/Initializer/random_uniform/mul3oldpi/dense_2/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@oldpi/dense_2/kernel*
_output_shapes

:d
�
oldpi/dense_2/kernel
VariableV2*'
_class
loc:@oldpi/dense_2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name 
�
oldpi/dense_2/kernel/AssignAssignoldpi/dense_2/kernel/oldpi/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:d*
use_locking(*
T0*'
_class
loc:@oldpi/dense_2/kernel*
validate_shape(
�
oldpi/dense_2/kernel/readIdentityoldpi/dense_2/kernel*
T0*'
_class
loc:@oldpi/dense_2/kernel*
_output_shapes

:d
�
$oldpi/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*%
_class
loc:@oldpi/dense_2/bias*
valueB*    
�
oldpi/dense_2/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@oldpi/dense_2/bias
�
oldpi/dense_2/bias/AssignAssignoldpi/dense_2/bias$oldpi/dense_2/bias/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@oldpi/dense_2/bias*
validate_shape(*
_output_shapes
:
�
oldpi/dense_2/bias/readIdentityoldpi/dense_2/bias*
T0*%
_class
loc:@oldpi/dense_2/bias*
_output_shapes
:
�
oldpi/dense_2/MatMulMatMuloldpi/dense/Reluoldpi/dense_2/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
oldpi/dense_2/BiasAddBiasAddoldpi/dense_2/MatMuloldpi/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
k
oldpi/dense_2/SoftplusSoftplusoldpi/dense_2/BiasAdd*'
_output_shapes
:���������*
T0
Y
oldpi/Normal/locIdentity	oldpi/mul*
T0*'
_output_shapes
:���������
h
oldpi/Normal/scaleIdentityoldpi/dense_2/Softplus*
T0*'
_output_shapes
:���������
_
pi/Normal/sample/sample_shapeConst*
value	B :*
dtype0*
_output_shapes
: 
i
pi/Normal/sample/sample_shape_1Const*
valueB:*
dtype0*
_output_shapes
:
o
"pi/Normal/batch_shape_tensor/ShapeShapepi/Normal/loc*
_output_shapes
:*
T0*
out_type0
s
$pi/Normal/batch_shape_tensor/Shape_1Shapepi/Normal/scale*
_output_shapes
:*
T0*
out_type0
�
*pi/Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs"pi/Normal/batch_shape_tensor/Shape$pi/Normal/batch_shape_tensor/Shape_1*
T0*
_output_shapes
:
j
 pi/Normal/sample/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB:
^
pi/Normal/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
pi/Normal/sample/concatConcatV2 pi/Normal/sample/concat/values_0*pi/Normal/batch_shape_tensor/BroadcastArgspi/Normal/sample/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
h
#pi/Normal/sample/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
j
%pi/Normal/sample/random_normal/stddevConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3pi/Normal/sample/random_normal/RandomStandardNormalRandomStandardNormalpi/Normal/sample/concat*
T0*
dtype0*4
_output_shapes"
 :������������������*
seed2 *

seed 
�
"pi/Normal/sample/random_normal/mulMul3pi/Normal/sample/random_normal/RandomStandardNormal%pi/Normal/sample/random_normal/stddev*
T0*4
_output_shapes"
 :������������������
�
pi/Normal/sample/random_normalAdd"pi/Normal/sample/random_normal/mul#pi/Normal/sample/random_normal/mean*4
_output_shapes"
 :������������������*
T0
�
pi/Normal/sample/mulMulpi/Normal/sample/random_normalpi/Normal/scale*
T0*4
_output_shapes"
 :������������������

pi/Normal/sample/addAddpi/Normal/sample/mulpi/Normal/loc*
T0*4
_output_shapes"
 :������������������
j
pi/Normal/sample/ShapeShapepi/Normal/sample/add*
T0*
out_type0*
_output_shapes
:
n
$pi/Normal/sample/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
p
&pi/Normal/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
p
&pi/Normal/sample/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
pi/Normal/sample/strided_sliceStridedSlicepi/Normal/sample/Shape$pi/Normal/sample/strided_slice/stack&pi/Normal/sample/strided_slice/stack_1&pi/Normal/sample/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
`
pi/Normal/sample/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
pi/Normal/sample/concat_1ConcatV2pi/Normal/sample/sample_shape_1pi/Normal/sample/strided_slicepi/Normal/sample/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
�
pi/Normal/sample/ReshapeReshapepi/Normal/sample/addpi/Normal/sample/concat_1*
T0*
Tshape0*+
_output_shapes
:���������
�
sample_action/SqueezeSqueezepi/Normal/sample/Reshape*'
_output_shapes
:���������*
squeeze_dims
 *
T0
�
update_oldpi/AssignAssignoldpi/dense/kernelpi/dense/kernel/read*
use_locking( *
T0*%
_class
loc:@oldpi/dense/kernel*
validate_shape(*
_output_shapes

:d
�
update_oldpi/Assign_1Assignoldpi/dense/biaspi/dense/bias/read*
use_locking( *
T0*#
_class
loc:@oldpi/dense/bias*
validate_shape(*
_output_shapes
:d
�
update_oldpi/Assign_2Assignoldpi/dense_1/kernelpi/dense_1/kernel/read*'
_class
loc:@oldpi/dense_1/kernel*
validate_shape(*
_output_shapes

:d*
use_locking( *
T0
�
update_oldpi/Assign_3Assignoldpi/dense_1/biaspi/dense_1/bias/read*
T0*%
_class
loc:@oldpi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking( 
�
update_oldpi/Assign_4Assignoldpi/dense_2/kernelpi/dense_2/kernel/read*
use_locking( *
T0*'
_class
loc:@oldpi/dense_2/kernel*
validate_shape(*
_output_shapes

:d
�
update_oldpi/Assign_5Assignoldpi/dense_2/biaspi/dense_2/bias/read*
use_locking( *
T0*%
_class
loc:@oldpi/dense_2/bias*
validate_shape(*
_output_shapes
:
i
actionPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
l
	advantagePlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
n
pi/Normal/prob/standardize/subSubactionpi/Normal/loc*'
_output_shapes
:���������*
T0
�
"pi/Normal/prob/standardize/truedivRealDivpi/Normal/prob/standardize/subpi/Normal/scale*
T0*'
_output_shapes
:���������
u
pi/Normal/prob/SquareSquare"pi/Normal/prob/standardize/truediv*
T0*'
_output_shapes
:���������
Y
pi/Normal/prob/mul/xConst*
valueB
 *   �*
dtype0*
_output_shapes
: 
x
pi/Normal/prob/mulMulpi/Normal/prob/mul/xpi/Normal/prob/Square*
T0*'
_output_shapes
:���������
\
pi/Normal/prob/LogLogpi/Normal/scale*'
_output_shapes
:���������*
T0
Y
pi/Normal/prob/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *�?k?
u
pi/Normal/prob/addAddpi/Normal/prob/add/xpi/Normal/prob/Log*
T0*'
_output_shapes
:���������
s
pi/Normal/prob/subSubpi/Normal/prob/mulpi/Normal/prob/add*
T0*'
_output_shapes
:���������
_
pi/Normal/prob/ExpExppi/Normal/prob/sub*
T0*'
_output_shapes
:���������
t
!oldpi/Normal/prob/standardize/subSubactionoldpi/Normal/loc*
T0*'
_output_shapes
:���������
�
%oldpi/Normal/prob/standardize/truedivRealDiv!oldpi/Normal/prob/standardize/suboldpi/Normal/scale*
T0*'
_output_shapes
:���������
{
oldpi/Normal/prob/SquareSquare%oldpi/Normal/prob/standardize/truediv*
T0*'
_output_shapes
:���������
\
oldpi/Normal/prob/mul/xConst*
_output_shapes
: *
valueB
 *   �*
dtype0
�
oldpi/Normal/prob/mulMuloldpi/Normal/prob/mul/xoldpi/Normal/prob/Square*
T0*'
_output_shapes
:���������
b
oldpi/Normal/prob/LogLogoldpi/Normal/scale*
T0*'
_output_shapes
:���������
\
oldpi/Normal/prob/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *�?k?
~
oldpi/Normal/prob/addAddoldpi/Normal/prob/add/xoldpi/Normal/prob/Log*
T0*'
_output_shapes
:���������
|
oldpi/Normal/prob/subSuboldpi/Normal/prob/muloldpi/Normal/prob/add*
T0*'
_output_shapes
:���������
e
oldpi/Normal/prob/ExpExpoldpi/Normal/prob/sub*'
_output_shapes
:���������*
T0
~
loss/surrogate/truedivRealDivpi/Normal/prob/Expoldpi/Normal/prob/Exp*'
_output_shapes
:���������*
T0
n
loss/surrogate/mulMulloss/surrogate/truediv	advantage*
T0*'
_output_shapes
:���������
a
loss/clip_by_value/Minimum/yConst*
valueB
 *���?*
dtype0*
_output_shapes
: 
�
loss/clip_by_value/MinimumMinimumloss/surrogate/truedivloss/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
Y
loss/clip_by_value/yConst*
valueB
 *��L?*
dtype0*
_output_shapes
: 
�
loss/clip_by_valueMaximumloss/clip_by_value/Minimumloss/clip_by_value/y*'
_output_shapes
:���������*
T0
`
loss/mulMulloss/clip_by_value	advantage*
T0*'
_output_shapes
:���������
g
loss/MinimumMinimumloss/surrogate/mulloss/mul*
T0*'
_output_shapes
:���������
[

loss/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
i
	loss/MeanMeanloss/Minimum
loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
;
loss/NegNeg	loss/Mean*
_output_shapes
: *
T0
Y
atrain/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
_
atrain/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
atrain/gradients/FillFillatrain/gradients/Shapeatrain/gradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
a
"atrain/gradients/loss/Neg_grad/NegNegatrain/gradients/Fill*
T0*
_output_shapes
: 
~
-atrain/gradients/loss/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
'atrain/gradients/loss/Mean_grad/ReshapeReshape"atrain/gradients/loss/Neg_grad/Neg-atrain/gradients/loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
q
%atrain/gradients/loss/Mean_grad/ShapeShapeloss/Minimum*
T0*
out_type0*
_output_shapes
:
�
$atrain/gradients/loss/Mean_grad/TileTile'atrain/gradients/loss/Mean_grad/Reshape%atrain/gradients/loss/Mean_grad/Shape*'
_output_shapes
:���������*

Tmultiples0*
T0
s
'atrain/gradients/loss/Mean_grad/Shape_1Shapeloss/Minimum*
T0*
out_type0*
_output_shapes
:
j
'atrain/gradients/loss/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
o
%atrain/gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
$atrain/gradients/loss/Mean_grad/ProdProd'atrain/gradients/loss/Mean_grad/Shape_1%atrain/gradients/loss/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
q
'atrain/gradients/loss/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
�
&atrain/gradients/loss/Mean_grad/Prod_1Prod'atrain/gradients/loss/Mean_grad/Shape_2'atrain/gradients/loss/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
)atrain/gradients/loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
'atrain/gradients/loss/Mean_grad/MaximumMaximum&atrain/gradients/loss/Mean_grad/Prod_1)atrain/gradients/loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
(atrain/gradients/loss/Mean_grad/floordivFloorDiv$atrain/gradients/loss/Mean_grad/Prod'atrain/gradients/loss/Mean_grad/Maximum*
_output_shapes
: *
T0
�
$atrain/gradients/loss/Mean_grad/CastCast(atrain/gradients/loss/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
'atrain/gradients/loss/Mean_grad/truedivRealDiv$atrain/gradients/loss/Mean_grad/Tile$atrain/gradients/loss/Mean_grad/Cast*
T0*'
_output_shapes
:���������
z
(atrain/gradients/loss/Minimum_grad/ShapeShapeloss/surrogate/mul*
T0*
out_type0*
_output_shapes
:
r
*atrain/gradients/loss/Minimum_grad/Shape_1Shapeloss/mul*
_output_shapes
:*
T0*
out_type0
�
*atrain/gradients/loss/Minimum_grad/Shape_2Shape'atrain/gradients/loss/Mean_grad/truediv*
_output_shapes
:*
T0*
out_type0
s
.atrain/gradients/loss/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
(atrain/gradients/loss/Minimum_grad/zerosFill*atrain/gradients/loss/Minimum_grad/Shape_2.atrain/gradients/loss/Minimum_grad/zeros/Const*

index_type0*'
_output_shapes
:���������*
T0
�
,atrain/gradients/loss/Minimum_grad/LessEqual	LessEqualloss/surrogate/mulloss/mul*'
_output_shapes
:���������*
T0
�
8atrain/gradients/loss/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs(atrain/gradients/loss/Minimum_grad/Shape*atrain/gradients/loss/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
)atrain/gradients/loss/Minimum_grad/SelectSelect,atrain/gradients/loss/Minimum_grad/LessEqual'atrain/gradients/loss/Mean_grad/truediv(atrain/gradients/loss/Minimum_grad/zeros*
T0*'
_output_shapes
:���������
�
+atrain/gradients/loss/Minimum_grad/Select_1Select,atrain/gradients/loss/Minimum_grad/LessEqual(atrain/gradients/loss/Minimum_grad/zeros'atrain/gradients/loss/Mean_grad/truediv*
T0*'
_output_shapes
:���������
�
&atrain/gradients/loss/Minimum_grad/SumSum)atrain/gradients/loss/Minimum_grad/Select8atrain/gradients/loss/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*atrain/gradients/loss/Minimum_grad/ReshapeReshape&atrain/gradients/loss/Minimum_grad/Sum(atrain/gradients/loss/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
(atrain/gradients/loss/Minimum_grad/Sum_1Sum+atrain/gradients/loss/Minimum_grad/Select_1:atrain/gradients/loss/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
,atrain/gradients/loss/Minimum_grad/Reshape_1Reshape(atrain/gradients/loss/Minimum_grad/Sum_1*atrain/gradients/loss/Minimum_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
3atrain/gradients/loss/Minimum_grad/tuple/group_depsNoOp+^atrain/gradients/loss/Minimum_grad/Reshape-^atrain/gradients/loss/Minimum_grad/Reshape_1
�
;atrain/gradients/loss/Minimum_grad/tuple/control_dependencyIdentity*atrain/gradients/loss/Minimum_grad/Reshape4^atrain/gradients/loss/Minimum_grad/tuple/group_deps*
T0*=
_class3
1/loc:@atrain/gradients/loss/Minimum_grad/Reshape*'
_output_shapes
:���������
�
=atrain/gradients/loss/Minimum_grad/tuple/control_dependency_1Identity,atrain/gradients/loss/Minimum_grad/Reshape_14^atrain/gradients/loss/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@atrain/gradients/loss/Minimum_grad/Reshape_1*'
_output_shapes
:���������
�
.atrain/gradients/loss/surrogate/mul_grad/ShapeShapeloss/surrogate/truediv*
T0*
out_type0*
_output_shapes
:
y
0atrain/gradients/loss/surrogate/mul_grad/Shape_1Shape	advantage*
T0*
out_type0*
_output_shapes
:
�
>atrain/gradients/loss/surrogate/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/loss/surrogate/mul_grad/Shape0atrain/gradients/loss/surrogate/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
,atrain/gradients/loss/surrogate/mul_grad/MulMul;atrain/gradients/loss/Minimum_grad/tuple/control_dependency	advantage*
T0*'
_output_shapes
:���������
�
,atrain/gradients/loss/surrogate/mul_grad/SumSum,atrain/gradients/loss/surrogate/mul_grad/Mul>atrain/gradients/loss/surrogate/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
0atrain/gradients/loss/surrogate/mul_grad/ReshapeReshape,atrain/gradients/loss/surrogate/mul_grad/Sum.atrain/gradients/loss/surrogate/mul_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
.atrain/gradients/loss/surrogate/mul_grad/Mul_1Mulloss/surrogate/truediv;atrain/gradients/loss/Minimum_grad/tuple/control_dependency*'
_output_shapes
:���������*
T0
�
.atrain/gradients/loss/surrogate/mul_grad/Sum_1Sum.atrain/gradients/loss/surrogate/mul_grad/Mul_1@atrain/gradients/loss/surrogate/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
2atrain/gradients/loss/surrogate/mul_grad/Reshape_1Reshape.atrain/gradients/loss/surrogate/mul_grad/Sum_10atrain/gradients/loss/surrogate/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
9atrain/gradients/loss/surrogate/mul_grad/tuple/group_depsNoOp1^atrain/gradients/loss/surrogate/mul_grad/Reshape3^atrain/gradients/loss/surrogate/mul_grad/Reshape_1
�
Aatrain/gradients/loss/surrogate/mul_grad/tuple/control_dependencyIdentity0atrain/gradients/loss/surrogate/mul_grad/Reshape:^atrain/gradients/loss/surrogate/mul_grad/tuple/group_deps*C
_class9
75loc:@atrain/gradients/loss/surrogate/mul_grad/Reshape*'
_output_shapes
:���������*
T0
�
Catrain/gradients/loss/surrogate/mul_grad/tuple/control_dependency_1Identity2atrain/gradients/loss/surrogate/mul_grad/Reshape_1:^atrain/gradients/loss/surrogate/mul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*E
_class;
97loc:@atrain/gradients/loss/surrogate/mul_grad/Reshape_1
v
$atrain/gradients/loss/mul_grad/ShapeShapeloss/clip_by_value*
T0*
out_type0*
_output_shapes
:
o
&atrain/gradients/loss/mul_grad/Shape_1Shape	advantage*
T0*
out_type0*
_output_shapes
:
�
4atrain/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs$atrain/gradients/loss/mul_grad/Shape&atrain/gradients/loss/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
"atrain/gradients/loss/mul_grad/MulMul=atrain/gradients/loss/Minimum_grad/tuple/control_dependency_1	advantage*
T0*'
_output_shapes
:���������
�
"atrain/gradients/loss/mul_grad/SumSum"atrain/gradients/loss/mul_grad/Mul4atrain/gradients/loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
&atrain/gradients/loss/mul_grad/ReshapeReshape"atrain/gradients/loss/mul_grad/Sum$atrain/gradients/loss/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
$atrain/gradients/loss/mul_grad/Mul_1Mulloss/clip_by_value=atrain/gradients/loss/Minimum_grad/tuple/control_dependency_1*'
_output_shapes
:���������*
T0
�
$atrain/gradients/loss/mul_grad/Sum_1Sum$atrain/gradients/loss/mul_grad/Mul_16atrain/gradients/loss/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(atrain/gradients/loss/mul_grad/Reshape_1Reshape$atrain/gradients/loss/mul_grad/Sum_1&atrain/gradients/loss/mul_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0
�
/atrain/gradients/loss/mul_grad/tuple/group_depsNoOp'^atrain/gradients/loss/mul_grad/Reshape)^atrain/gradients/loss/mul_grad/Reshape_1
�
7atrain/gradients/loss/mul_grad/tuple/control_dependencyIdentity&atrain/gradients/loss/mul_grad/Reshape0^atrain/gradients/loss/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@atrain/gradients/loss/mul_grad/Reshape*'
_output_shapes
:���������
�
9atrain/gradients/loss/mul_grad/tuple/control_dependency_1Identity(atrain/gradients/loss/mul_grad/Reshape_10^atrain/gradients/loss/mul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@atrain/gradients/loss/mul_grad/Reshape_1*'
_output_shapes
:���������
�
.atrain/gradients/loss/clip_by_value_grad/ShapeShapeloss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:
s
0atrain/gradients/loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
0atrain/gradients/loss/clip_by_value_grad/Shape_2Shape7atrain/gradients/loss/mul_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
y
4atrain/gradients/loss/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
.atrain/gradients/loss/clip_by_value_grad/zerosFill0atrain/gradients/loss/clip_by_value_grad/Shape_24atrain/gradients/loss/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������*
T0*

index_type0
�
5atrain/gradients/loss/clip_by_value_grad/GreaterEqualGreaterEqualloss/clip_by_value/Minimumloss/clip_by_value/y*'
_output_shapes
:���������*
T0
�
>atrain/gradients/loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/loss/clip_by_value_grad/Shape0atrain/gradients/loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
/atrain/gradients/loss/clip_by_value_grad/SelectSelect5atrain/gradients/loss/clip_by_value_grad/GreaterEqual7atrain/gradients/loss/mul_grad/tuple/control_dependency.atrain/gradients/loss/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
1atrain/gradients/loss/clip_by_value_grad/Select_1Select5atrain/gradients/loss/clip_by_value_grad/GreaterEqual.atrain/gradients/loss/clip_by_value_grad/zeros7atrain/gradients/loss/mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������
�
,atrain/gradients/loss/clip_by_value_grad/SumSum/atrain/gradients/loss/clip_by_value_grad/Select>atrain/gradients/loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
0atrain/gradients/loss/clip_by_value_grad/ReshapeReshape,atrain/gradients/loss/clip_by_value_grad/Sum.atrain/gradients/loss/clip_by_value_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
.atrain/gradients/loss/clip_by_value_grad/Sum_1Sum1atrain/gradients/loss/clip_by_value_grad/Select_1@atrain/gradients/loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
2atrain/gradients/loss/clip_by_value_grad/Reshape_1Reshape.atrain/gradients/loss/clip_by_value_grad/Sum_10atrain/gradients/loss/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
9atrain/gradients/loss/clip_by_value_grad/tuple/group_depsNoOp1^atrain/gradients/loss/clip_by_value_grad/Reshape3^atrain/gradients/loss/clip_by_value_grad/Reshape_1
�
Aatrain/gradients/loss/clip_by_value_grad/tuple/control_dependencyIdentity0atrain/gradients/loss/clip_by_value_grad/Reshape:^atrain/gradients/loss/clip_by_value_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/loss/clip_by_value_grad/Reshape*'
_output_shapes
:���������
�
Catrain/gradients/loss/clip_by_value_grad/tuple/control_dependency_1Identity2atrain/gradients/loss/clip_by_value_grad/Reshape_1:^atrain/gradients/loss/clip_by_value_grad/tuple/group_deps*
T0*E
_class;
97loc:@atrain/gradients/loss/clip_by_value_grad/Reshape_1*
_output_shapes
: 
�
6atrain/gradients/loss/clip_by_value/Minimum_grad/ShapeShapeloss/surrogate/truediv*
T0*
out_type0*
_output_shapes
:
{
8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_2ShapeAatrain/gradients/loss/clip_by_value_grad/tuple/control_dependency*
_output_shapes
:*
T0*
out_type0
�
<atrain/gradients/loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
6atrain/gradients/loss/clip_by_value/Minimum_grad/zerosFill8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_2<atrain/gradients/loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������
�
:atrain/gradients/loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/surrogate/truedivloss/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
�
Fatrain/gradients/loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs6atrain/gradients/loss/clip_by_value/Minimum_grad/Shape8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
7atrain/gradients/loss/clip_by_value/Minimum_grad/SelectSelect:atrain/gradients/loss/clip_by_value/Minimum_grad/LessEqualAatrain/gradients/loss/clip_by_value_grad/tuple/control_dependency6atrain/gradients/loss/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
9atrain/gradients/loss/clip_by_value/Minimum_grad/Select_1Select:atrain/gradients/loss/clip_by_value/Minimum_grad/LessEqual6atrain/gradients/loss/clip_by_value/Minimum_grad/zerosAatrain/gradients/loss/clip_by_value_grad/tuple/control_dependency*'
_output_shapes
:���������*
T0
�
4atrain/gradients/loss/clip_by_value/Minimum_grad/SumSum7atrain/gradients/loss/clip_by_value/Minimum_grad/SelectFatrain/gradients/loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
8atrain/gradients/loss/clip_by_value/Minimum_grad/ReshapeReshape4atrain/gradients/loss/clip_by_value/Minimum_grad/Sum6atrain/gradients/loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
6atrain/gradients/loss/clip_by_value/Minimum_grad/Sum_1Sum9atrain/gradients/loss/clip_by_value/Minimum_grad/Select_1Hatrain/gradients/loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
:atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1Reshape6atrain/gradients/loss/clip_by_value/Minimum_grad/Sum_18atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Aatrain/gradients/loss/clip_by_value/Minimum_grad/tuple/group_depsNoOp9^atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape;^atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1
�
Iatrain/gradients/loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity8atrain/gradients/loss/clip_by_value/Minimum_grad/ReshapeB^atrain/gradients/loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*K
_classA
?=loc:@atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:���������
�
Katrain/gradients/loss/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity:atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1B^atrain/gradients/loss/clip_by_value/Minimum_grad/tuple/group_deps*M
_classC
A?loc:@atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: *
T0
�
atrain/gradients/AddNAddNAatrain/gradients/loss/surrogate/mul_grad/tuple/control_dependencyIatrain/gradients/loss/clip_by_value/Minimum_grad/tuple/control_dependency*
T0*C
_class9
75loc:@atrain/gradients/loss/surrogate/mul_grad/Reshape*
N*'
_output_shapes
:���������
�
2atrain/gradients/loss/surrogate/truediv_grad/ShapeShapepi/Normal/prob/Exp*
_output_shapes
:*
T0*
out_type0
�
4atrain/gradients/loss/surrogate/truediv_grad/Shape_1Shapeoldpi/Normal/prob/Exp*
_output_shapes
:*
T0*
out_type0
�
Batrain/gradients/loss/surrogate/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs2atrain/gradients/loss/surrogate/truediv_grad/Shape4atrain/gradients/loss/surrogate/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
4atrain/gradients/loss/surrogate/truediv_grad/RealDivRealDivatrain/gradients/AddNoldpi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
�
0atrain/gradients/loss/surrogate/truediv_grad/SumSum4atrain/gradients/loss/surrogate/truediv_grad/RealDivBatrain/gradients/loss/surrogate/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
4atrain/gradients/loss/surrogate/truediv_grad/ReshapeReshape0atrain/gradients/loss/surrogate/truediv_grad/Sum2atrain/gradients/loss/surrogate/truediv_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
}
0atrain/gradients/loss/surrogate/truediv_grad/NegNegpi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
�
6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_1RealDiv0atrain/gradients/loss/surrogate/truediv_grad/Negoldpi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
�
6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_2RealDiv6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_1oldpi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
�
0atrain/gradients/loss/surrogate/truediv_grad/mulMulatrain/gradients/AddN6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:���������
�
2atrain/gradients/loss/surrogate/truediv_grad/Sum_1Sum0atrain/gradients/loss/surrogate/truediv_grad/mulDatrain/gradients/loss/surrogate/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6atrain/gradients/loss/surrogate/truediv_grad/Reshape_1Reshape2atrain/gradients/loss/surrogate/truediv_grad/Sum_14atrain/gradients/loss/surrogate/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
=atrain/gradients/loss/surrogate/truediv_grad/tuple/group_depsNoOp5^atrain/gradients/loss/surrogate/truediv_grad/Reshape7^atrain/gradients/loss/surrogate/truediv_grad/Reshape_1
�
Eatrain/gradients/loss/surrogate/truediv_grad/tuple/control_dependencyIdentity4atrain/gradients/loss/surrogate/truediv_grad/Reshape>^atrain/gradients/loss/surrogate/truediv_grad/tuple/group_deps*
T0*G
_class=
;9loc:@atrain/gradients/loss/surrogate/truediv_grad/Reshape*'
_output_shapes
:���������
�
Gatrain/gradients/loss/surrogate/truediv_grad/tuple/control_dependency_1Identity6atrain/gradients/loss/surrogate/truediv_grad/Reshape_1>^atrain/gradients/loss/surrogate/truediv_grad/tuple/group_deps*
T0*I
_class?
=;loc:@atrain/gradients/loss/surrogate/truediv_grad/Reshape_1*'
_output_shapes
:���������
�
,atrain/gradients/pi/Normal/prob/Exp_grad/mulMulEatrain/gradients/loss/surrogate/truediv_grad/tuple/control_dependencypi/Normal/prob/Exp*'
_output_shapes
:���������*
T0
�
.atrain/gradients/pi/Normal/prob/sub_grad/ShapeShapepi/Normal/prob/mul*
T0*
out_type0*
_output_shapes
:
�
0atrain/gradients/pi/Normal/prob/sub_grad/Shape_1Shapepi/Normal/prob/add*
T0*
out_type0*
_output_shapes
:
�
>atrain/gradients/pi/Normal/prob/sub_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/pi/Normal/prob/sub_grad/Shape0atrain/gradients/pi/Normal/prob/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
,atrain/gradients/pi/Normal/prob/sub_grad/SumSum,atrain/gradients/pi/Normal/prob/Exp_grad/mul>atrain/gradients/pi/Normal/prob/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
0atrain/gradients/pi/Normal/prob/sub_grad/ReshapeReshape,atrain/gradients/pi/Normal/prob/sub_grad/Sum.atrain/gradients/pi/Normal/prob/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
.atrain/gradients/pi/Normal/prob/sub_grad/Sum_1Sum,atrain/gradients/pi/Normal/prob/Exp_grad/mul@atrain/gradients/pi/Normal/prob/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
,atrain/gradients/pi/Normal/prob/sub_grad/NegNeg.atrain/gradients/pi/Normal/prob/sub_grad/Sum_1*
_output_shapes
:*
T0
�
2atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1Reshape,atrain/gradients/pi/Normal/prob/sub_grad/Neg0atrain/gradients/pi/Normal/prob/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
9atrain/gradients/pi/Normal/prob/sub_grad/tuple/group_depsNoOp1^atrain/gradients/pi/Normal/prob/sub_grad/Reshape3^atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1
�
Aatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependencyIdentity0atrain/gradients/pi/Normal/prob/sub_grad/Reshape:^atrain/gradients/pi/Normal/prob/sub_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*C
_class9
75loc:@atrain/gradients/pi/Normal/prob/sub_grad/Reshape
�
Catrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1:^atrain/gradients/pi/Normal/prob/sub_grad/tuple/group_deps*E
_class;
97loc:@atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1*'
_output_shapes
:���������*
T0
q
.atrain/gradients/pi/Normal/prob/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
�
0atrain/gradients/pi/Normal/prob/mul_grad/Shape_1Shapepi/Normal/prob/Square*
T0*
out_type0*
_output_shapes
:
�
>atrain/gradients/pi/Normal/prob/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/pi/Normal/prob/mul_grad/Shape0atrain/gradients/pi/Normal/prob/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
,atrain/gradients/pi/Normal/prob/mul_grad/MulMulAatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependencypi/Normal/prob/Square*'
_output_shapes
:���������*
T0
�
,atrain/gradients/pi/Normal/prob/mul_grad/SumSum,atrain/gradients/pi/Normal/prob/mul_grad/Mul>atrain/gradients/pi/Normal/prob/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
0atrain/gradients/pi/Normal/prob/mul_grad/ReshapeReshape,atrain/gradients/pi/Normal/prob/mul_grad/Sum.atrain/gradients/pi/Normal/prob/mul_grad/Shape*
_output_shapes
: *
T0*
Tshape0
�
.atrain/gradients/pi/Normal/prob/mul_grad/Mul_1Mulpi/Normal/prob/mul/xAatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������
�
.atrain/gradients/pi/Normal/prob/mul_grad/Sum_1Sum.atrain/gradients/pi/Normal/prob/mul_grad/Mul_1@atrain/gradients/pi/Normal/prob/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
2atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1Reshape.atrain/gradients/pi/Normal/prob/mul_grad/Sum_10atrain/gradients/pi/Normal/prob/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
9atrain/gradients/pi/Normal/prob/mul_grad/tuple/group_depsNoOp1^atrain/gradients/pi/Normal/prob/mul_grad/Reshape3^atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1
�
Aatrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependencyIdentity0atrain/gradients/pi/Normal/prob/mul_grad/Reshape:^atrain/gradients/pi/Normal/prob/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*C
_class9
75loc:@atrain/gradients/pi/Normal/prob/mul_grad/Reshape
�
Catrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1:^atrain/gradients/pi/Normal/prob/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1*'
_output_shapes
:���������
q
.atrain/gradients/pi/Normal/prob/add_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
�
0atrain/gradients/pi/Normal/prob/add_grad/Shape_1Shapepi/Normal/prob/Log*
T0*
out_type0*
_output_shapes
:
�
>atrain/gradients/pi/Normal/prob/add_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/pi/Normal/prob/add_grad/Shape0atrain/gradients/pi/Normal/prob/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
,atrain/gradients/pi/Normal/prob/add_grad/SumSumCatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency_1>atrain/gradients/pi/Normal/prob/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
0atrain/gradients/pi/Normal/prob/add_grad/ReshapeReshape,atrain/gradients/pi/Normal/prob/add_grad/Sum.atrain/gradients/pi/Normal/prob/add_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
.atrain/gradients/pi/Normal/prob/add_grad/Sum_1SumCatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency_1@atrain/gradients/pi/Normal/prob/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
2atrain/gradients/pi/Normal/prob/add_grad/Reshape_1Reshape.atrain/gradients/pi/Normal/prob/add_grad/Sum_10atrain/gradients/pi/Normal/prob/add_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0
�
9atrain/gradients/pi/Normal/prob/add_grad/tuple/group_depsNoOp1^atrain/gradients/pi/Normal/prob/add_grad/Reshape3^atrain/gradients/pi/Normal/prob/add_grad/Reshape_1
�
Aatrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependencyIdentity0atrain/gradients/pi/Normal/prob/add_grad/Reshape:^atrain/gradients/pi/Normal/prob/add_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/pi/Normal/prob/add_grad/Reshape*
_output_shapes
: 
�
Catrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/Normal/prob/add_grad/Reshape_1:^atrain/gradients/pi/Normal/prob/add_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*E
_class;
97loc:@atrain/gradients/pi/Normal/prob/add_grad/Reshape_1
�
1atrain/gradients/pi/Normal/prob/Square_grad/ConstConstD^atrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
/atrain/gradients/pi/Normal/prob/Square_grad/MulMul"pi/Normal/prob/standardize/truediv1atrain/gradients/pi/Normal/prob/Square_grad/Const*'
_output_shapes
:���������*
T0
�
1atrain/gradients/pi/Normal/prob/Square_grad/Mul_1MulCatrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependency_1/atrain/gradients/pi/Normal/prob/Square_grad/Mul*'
_output_shapes
:���������*
T0
�
3atrain/gradients/pi/Normal/prob/Log_grad/Reciprocal
Reciprocalpi/Normal/scaleD^atrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependency_1*'
_output_shapes
:���������*
T0
�
,atrain/gradients/pi/Normal/prob/Log_grad/mulMulCatrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependency_13atrain/gradients/pi/Normal/prob/Log_grad/Reciprocal*'
_output_shapes
:���������*
T0
�
>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ShapeShapepi/Normal/prob/standardize/sub*
out_type0*
_output_shapes
:*
T0
�
@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape_1Shapepi/Normal/scale*
T0*
out_type0*
_output_shapes
:
�
Natrain/gradients/pi/Normal/prob/standardize/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDivRealDiv1atrain/gradients/pi/Normal/prob/Square_grad/Mul_1pi/Normal/scale*'
_output_shapes
:���������*
T0
�
<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/SumSum@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDivNatrain/gradients/pi/Normal/prob/standardize/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ReshapeReshape<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Sum>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/NegNegpi/Normal/prob/standardize/sub*
T0*'
_output_shapes
:���������
�
Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_1RealDiv<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Negpi/Normal/scale*
T0*'
_output_shapes
:���������
�
Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_2RealDivBatrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_1pi/Normal/scale*
T0*'
_output_shapes
:���������
�
<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/mulMul1atrain/gradients/pi/Normal/prob/Square_grad/Mul_1Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_2*'
_output_shapes
:���������*
T0
�
>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Sum_1Sum<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/mulPatrain/gradients/pi/Normal/prob/standardize/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1Reshape>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Sum_1@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0
�
Iatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/group_depsNoOpA^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ReshapeC^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1
�
Qatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependencyIdentity@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ReshapeJ^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*S
_classI
GEloc:@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape
�
Satrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependency_1IdentityBatrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1J^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/group_deps*
T0*U
_classK
IGloc:@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1*'
_output_shapes
:���������
�
:atrain/gradients/pi/Normal/prob/standardize/sub_grad/ShapeShapeaction*
T0*
out_type0*
_output_shapes
:
�
<atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape_1Shapepi/Normal/loc*
_output_shapes
:*
T0*
out_type0
�
Jatrain/gradients/pi/Normal/prob/standardize/sub_grad/BroadcastGradientArgsBroadcastGradientArgs:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape<atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
8atrain/gradients/pi/Normal/prob/standardize/sub_grad/SumSumQatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependencyJatrain/gradients/pi/Normal/prob/standardize/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
<atrain/gradients/pi/Normal/prob/standardize/sub_grad/ReshapeReshape8atrain/gradients/pi/Normal/prob/standardize/sub_grad/Sum:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Sum_1SumQatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependencyLatrain/gradients/pi/Normal/prob/standardize/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
8atrain/gradients/pi/Normal/prob/standardize/sub_grad/NegNeg:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Sum_1*
T0*
_output_shapes
:
�
>atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1Reshape8atrain/gradients/pi/Normal/prob/standardize/sub_grad/Neg<atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
T0
�
Eatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/group_depsNoOp=^atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape?^atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1
�
Matrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependencyIdentity<atrain/gradients/pi/Normal/prob/standardize/sub_grad/ReshapeF^atrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*O
_classE
CAloc:@atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape
�
Oatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependency_1Identity>atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1F^atrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*Q
_classG
ECloc:@atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1
�
atrain/gradients/AddN_1AddN,atrain/gradients/pi/Normal/prob/Log_grad/mulSatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@atrain/gradients/pi/Normal/prob/Log_grad/mul*
N*'
_output_shapes
:���������
�
6atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGradSoftplusGradatrain/gradients/AddN_1pi/dense_2/BiasAdd*
T0*'
_output_shapes
:���������
e
"atrain/gradients/pi/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
s
$atrain/gradients/pi/mul_grad/Shape_1Shapepi/dense_1/Tanh*
out_type0*
_output_shapes
:*
T0
�
2atrain/gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"atrain/gradients/pi/mul_grad/Shape$atrain/gradients/pi/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
 atrain/gradients/pi/mul_grad/MulMulOatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependency_1pi/dense_1/Tanh*'
_output_shapes
:���������*
T0
�
 atrain/gradients/pi/mul_grad/SumSum atrain/gradients/pi/mul_grad/Mul2atrain/gradients/pi/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
$atrain/gradients/pi/mul_grad/ReshapeReshape atrain/gradients/pi/mul_grad/Sum"atrain/gradients/pi/mul_grad/Shape*
_output_shapes
: *
T0*
Tshape0
�
"atrain/gradients/pi/mul_grad/Mul_1Mulpi/mul/xOatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������
�
"atrain/gradients/pi/mul_grad/Sum_1Sum"atrain/gradients/pi/mul_grad/Mul_14atrain/gradients/pi/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
&atrain/gradients/pi/mul_grad/Reshape_1Reshape"atrain/gradients/pi/mul_grad/Sum_1$atrain/gradients/pi/mul_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0
�
-atrain/gradients/pi/mul_grad/tuple/group_depsNoOp%^atrain/gradients/pi/mul_grad/Reshape'^atrain/gradients/pi/mul_grad/Reshape_1
�
5atrain/gradients/pi/mul_grad/tuple/control_dependencyIdentity$atrain/gradients/pi/mul_grad/Reshape.^atrain/gradients/pi/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@atrain/gradients/pi/mul_grad/Reshape*
_output_shapes
: 
�
7atrain/gradients/pi/mul_grad/tuple/control_dependency_1Identity&atrain/gradients/pi/mul_grad/Reshape_1.^atrain/gradients/pi/mul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*9
_class/
-+loc:@atrain/gradients/pi/mul_grad/Reshape_1
�
4atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad6atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad*
_output_shapes
:*
T0*
data_formatNHWC
�
9atrain/gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp5^atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad7^atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad
�
Aatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity6atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad:^atrain/gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad*'
_output_shapes
:���������
�
Catrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity4atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad:^atrain/gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
.atrain/gradients/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh7atrain/gradients/pi/mul_grad/tuple/control_dependency_1*'
_output_shapes
:���������*
T0
�
.atrain/gradients/pi/dense_2/MatMul_grad/MatMulMatMulAatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencypi/dense_2/kernel/read*
transpose_b(*
T0*'
_output_shapes
:���������d*
transpose_a( 
�
0atrain/gradients/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense/ReluAatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:d*
transpose_a(*
transpose_b( 
�
8atrain/gradients/pi/dense_2/MatMul_grad/tuple/group_depsNoOp/^atrain/gradients/pi/dense_2/MatMul_grad/MatMul1^atrain/gradients/pi/dense_2/MatMul_grad/MatMul_1
�
@atrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity.atrain/gradients/pi/dense_2/MatMul_grad/MatMul9^atrain/gradients/pi/dense_2/MatMul_grad/tuple/group_deps*A
_class7
53loc:@atrain/gradients/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:���������d*
T0
�
Batrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity0atrain/gradients/pi/dense_2/MatMul_grad/MatMul_19^atrain/gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:d
�
4atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
:*
T0
�
9atrain/gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad/^atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad
�
Aatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad:^atrain/gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad*'
_output_shapes
:���������*
T0
�
Catrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad:^atrain/gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
.atrain/gradients/pi/dense_1/MatMul_grad/MatMulMatMulAatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(*
T0
�
0atrain/gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/ReluAatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:d*
transpose_a(*
transpose_b( *
T0
�
8atrain/gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp/^atrain/gradients/pi/dense_1/MatMul_grad/MatMul1^atrain/gradients/pi/dense_1/MatMul_grad/MatMul_1
�
@atrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity.atrain/gradients/pi/dense_1/MatMul_grad/MatMul9^atrain/gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@atrain/gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
Batrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity0atrain/gradients/pi/dense_1/MatMul_grad/MatMul_19^atrain/gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:d
�
atrain/gradients/AddN_2AddN@atrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependency@atrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependency*'
_output_shapes
:���������d*
T0*A
_class7
53loc:@atrain/gradients/pi/dense_2/MatMul_grad/MatMul*
N
�
,atrain/gradients/pi/dense/Relu_grad/ReluGradReluGradatrain/gradients/AddN_2pi/dense/Relu*
T0*'
_output_shapes
:���������d
�
2atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,atrain/gradients/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:d
�
7atrain/gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp3^atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGrad-^atrain/gradients/pi/dense/Relu_grad/ReluGrad
�
?atrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity,atrain/gradients/pi/dense/Relu_grad/ReluGrad8^atrain/gradients/pi/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*?
_class5
31loc:@atrain/gradients/pi/dense/Relu_grad/ReluGrad
�
Aatrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGrad8^atrain/gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
�
,atrain/gradients/pi/dense/MatMul_grad/MatMulMatMul?atrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
.atrain/gradients/pi/dense/MatMul_grad/MatMul_1MatMulstate?atrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:d*
transpose_a(*
transpose_b( 
�
6atrain/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp-^atrain/gradients/pi/dense/MatMul_grad/MatMul/^atrain/gradients/pi/dense/MatMul_grad/MatMul_1
�
>atrain/gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity,atrain/gradients/pi/dense/MatMul_grad/MatMul7^atrain/gradients/pi/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*?
_class5
31loc:@atrain/gradients/pi/dense/MatMul_grad/MatMul
�
@atrain/gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity.atrain/gradients/pi/dense/MatMul_grad/MatMul_17^atrain/gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@atrain/gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes

:d
�
 atrain/beta1_power/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *fff?
�
atrain/beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias
�
atrain/beta1_power/AssignAssignatrain/beta1_power atrain/beta1_power/initial_value*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
z
atrain/beta1_power/readIdentityatrain/beta1_power*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
 atrain/beta2_power/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *w�?
�
atrain/beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias*
	container 
�
atrain/beta2_power/AssignAssignatrain/beta2_power atrain/beta2_power/initial_value*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
z
atrain/beta2_power/readIdentityatrain/beta2_power* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
T0
�
-atrain/pi/dense/kernel/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense/kernel/Adam
VariableV2*
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *"
_class
loc:@pi/dense/kernel*
	container 
�
"atrain/pi/dense/kernel/Adam/AssignAssignatrain/pi/dense/kernel/Adam-atrain/pi/dense/kernel/Adam/Initializer/zeros*
_output_shapes

:d*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
 atrain/pi/dense/kernel/Adam/readIdentityatrain/pi/dense/kernel/Adam*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d
�
/atrain/pi/dense/kernel/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense/kernel/Adam_1
VariableV2*
_output_shapes

:d*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
:d*
dtype0
�
$atrain/pi/dense/kernel/Adam_1/AssignAssignatrain/pi/dense/kernel/Adam_1/atrain/pi/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:d*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
"atrain/pi/dense/kernel/Adam_1/readIdentityatrain/pi/dense/kernel/Adam_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d
�
+atrain/pi/dense/bias/Adam/Initializer/zerosConst*
_output_shapes
:d* 
_class
loc:@pi/dense/bias*
valueBd*    *
dtype0
�
atrain/pi/dense/bias/Adam
VariableV2* 
_class
loc:@pi/dense/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name 
�
 atrain/pi/dense/bias/Adam/AssignAssignatrain/pi/dense/bias/Adam+atrain/pi/dense/bias/Adam/Initializer/zeros*
_output_shapes
:d*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
atrain/pi/dense/bias/Adam/readIdentityatrain/pi/dense/bias/Adam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:d
�
-atrain/pi/dense/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
atrain/pi/dense/bias/Adam_1
VariableV2*
shape:d*
dtype0*
_output_shapes
:d*
shared_name * 
_class
loc:@pi/dense/bias*
	container 
�
"atrain/pi/dense/bias/Adam_1/AssignAssignatrain/pi/dense/bias/Adam_1-atrain/pi/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:d
�
 atrain/pi/dense/bias/Adam_1/readIdentityatrain/pi/dense/bias/Adam_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:d
�
/atrain/pi/dense_1/kernel/Adam/Initializer/zerosConst*$
_class
loc:@pi/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense_1/kernel/Adam
VariableV2*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *$
_class
loc:@pi/dense_1/kernel
�
$atrain/pi/dense_1/kernel/Adam/AssignAssignatrain/pi/dense_1/kernel/Adam/atrain/pi/dense_1/kernel/Adam/Initializer/zeros*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
"atrain/pi/dense_1/kernel/Adam/readIdentityatrain/pi/dense_1/kernel/Adam*
_output_shapes

:d*
T0*$
_class
loc:@pi/dense_1/kernel
�
1atrain/pi/dense_1/kernel/Adam_1/Initializer/zerosConst*$
_class
loc:@pi/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense_1/kernel/Adam_1
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
&atrain/pi/dense_1/kernel/Adam_1/AssignAssignatrain/pi/dense_1/kernel/Adam_11atrain/pi/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
$atrain/pi/dense_1/kernel/Adam_1/readIdentityatrain/pi/dense_1/kernel/Adam_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:d
�
-atrain/pi/dense_1/bias/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
atrain/pi/dense_1/bias/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container 
�
"atrain/pi/dense_1/bias/Adam/AssignAssignatrain/pi/dense_1/bias/Adam-atrain/pi/dense_1/bias/Adam/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
 atrain/pi/dense_1/bias/Adam/readIdentityatrain/pi/dense_1/bias/Adam*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
�
/atrain/pi/dense_1/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
atrain/pi/dense_1/bias/Adam_1
VariableV2*"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
$atrain/pi/dense_1/bias/Adam_1/AssignAssignatrain/pi/dense_1/bias/Adam_1/atrain/pi/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
"atrain/pi/dense_1/bias/Adam_1/readIdentityatrain/pi/dense_1/bias/Adam_1*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
�
/atrain/pi/dense_2/kernel/Adam/Initializer/zerosConst*$
_class
loc:@pi/dense_2/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense_2/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:d
�
$atrain/pi/dense_2/kernel/Adam/AssignAssignatrain/pi/dense_2/kernel/Adam/atrain/pi/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:d
�
"atrain/pi/dense_2/kernel/Adam/readIdentityatrain/pi/dense_2/kernel/Adam*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:d
�
1atrain/pi/dense_2/kernel/Adam_1/Initializer/zerosConst*$
_class
loc:@pi/dense_2/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense_2/kernel/Adam_1
VariableV2*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *$
_class
loc:@pi/dense_2/kernel
�
&atrain/pi/dense_2/kernel/Adam_1/AssignAssignatrain/pi/dense_2/kernel/Adam_11atrain/pi/dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:d
�
$atrain/pi/dense_2/kernel/Adam_1/readIdentityatrain/pi/dense_2/kernel/Adam_1*
_output_shapes

:d*
T0*$
_class
loc:@pi/dense_2/kernel
�
-atrain/pi/dense_2/bias/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
atrain/pi/dense_2/bias/Adam
VariableV2*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
"atrain/pi/dense_2/bias/Adam/AssignAssignatrain/pi/dense_2/bias/Adam-atrain/pi/dense_2/bias/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
�
 atrain/pi/dense_2/bias/Adam/readIdentityatrain/pi/dense_2/bias/Adam*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
�
/atrain/pi/dense_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0
�
atrain/pi/dense_2/bias/Adam_1
VariableV2*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
$atrain/pi/dense_2/bias/Adam_1/AssignAssignatrain/pi/dense_2/bias/Adam_1/atrain/pi/dense_2/bias/Adam_1/Initializer/zeros*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
"atrain/pi/dense_2/bias/Adam_1/readIdentityatrain/pi/dense_2/bias/Adam_1*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
^
atrain/Adam/learning_rateConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
V
atrain/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
V
atrain/Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
X
atrain/Adam/epsilonConst*
_output_shapes
: *
valueB
 *w�+2*
dtype0
�
,atrain/Adam/update_pi/dense/kernel/ApplyAdam	ApplyAdampi/dense/kernelatrain/pi/dense/kernel/Adamatrain/pi/dense/kernel/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilon@atrain/gradients/pi/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:d*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel
�
*atrain/Adam/update_pi/dense/bias/ApplyAdam	ApplyAdampi/dense/biasatrain/pi/dense/bias/Adamatrain/pi/dense/bias/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonAatrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
_output_shapes
:d
�
.atrain/Adam/update_pi/dense_1/kernel/ApplyAdam	ApplyAdampi/dense_1/kernelatrain/pi/dense_1/kernel/Adamatrain/pi/dense_1/kernel/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonBatrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( *
_output_shapes

:d
�
,atrain/Adam/update_pi/dense_1/bias/ApplyAdam	ApplyAdampi/dense_1/biasatrain/pi/dense_1/bias/Adamatrain/pi/dense_1/bias/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonCatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( *
_output_shapes
:
�
.atrain/Adam/update_pi/dense_2/kernel/ApplyAdam	ApplyAdampi/dense_2/kernelatrain/pi/dense_2/kernel/Adamatrain/pi/dense_2/kernel/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonBatrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel*
use_nesterov( *
_output_shapes

:d
�
,atrain/Adam/update_pi/dense_2/bias/ApplyAdam	ApplyAdampi/dense_2/biasatrain/pi/dense_2/bias/Adamatrain/pi/dense_2/bias/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonCatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@pi/dense_2/bias
�
atrain/Adam/mulMulatrain/beta1_power/readatrain/Adam/beta1+^atrain/Adam/update_pi/dense/bias/ApplyAdam-^atrain/Adam/update_pi/dense/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_1/bias/ApplyAdam/^atrain/Adam/update_pi/dense_1/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_2/bias/ApplyAdam/^atrain/Adam/update_pi/dense_2/kernel/ApplyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
atrain/Adam/AssignAssignatrain/beta1_poweratrain/Adam/mul*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
atrain/Adam/mul_1Mulatrain/beta2_power/readatrain/Adam/beta2+^atrain/Adam/update_pi/dense/bias/ApplyAdam-^atrain/Adam/update_pi/dense/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_1/bias/ApplyAdam/^atrain/Adam/update_pi/dense_1/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_2/bias/ApplyAdam/^atrain/Adam/update_pi/dense_2/kernel/ApplyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
atrain/Adam/Assign_1Assignatrain/beta2_poweratrain/Adam/mul_1*
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
�
atrain/AdamNoOp^atrain/Adam/Assign^atrain/Adam/Assign_1+^atrain/Adam/update_pi/dense/bias/ApplyAdam-^atrain/Adam/update_pi/dense/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_1/bias/ApplyAdam/^atrain/Adam/update_pi/dense_1/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_2/bias/ApplyAdam/^atrain/Adam/update_pi/dense_2/kernel/ApplyAdam"h"J��     �u�	O�~���AJ��
� � 
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
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
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
Softplus
features"T
activations"T"
Ttype:
2	
Z
SoftplusGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
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
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.9.02v1.9.0-0-g25c197e023��
h
statePlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
�
4critic/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*&
_class
loc:@critic/dense/kernel*
valueB"   d   *
dtype0
�
2critic/dense/kernel/Initializer/random_uniform/minConst*&
_class
loc:@critic/dense/kernel*
valueB
 *��u�*
dtype0*
_output_shapes
: 
�
2critic/dense/kernel/Initializer/random_uniform/maxConst*&
_class
loc:@critic/dense/kernel*
valueB
 *��u>*
dtype0*
_output_shapes
: 
�
<critic/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform4critic/dense/kernel/Initializer/random_uniform/shape*
T0*&
_class
loc:@critic/dense/kernel*
seed2 *
dtype0*
_output_shapes

:d*

seed 
�
2critic/dense/kernel/Initializer/random_uniform/subSub2critic/dense/kernel/Initializer/random_uniform/max2critic/dense/kernel/Initializer/random_uniform/min*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes
: 
�
2critic/dense/kernel/Initializer/random_uniform/mulMul<critic/dense/kernel/Initializer/random_uniform/RandomUniform2critic/dense/kernel/Initializer/random_uniform/sub*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
.critic/dense/kernel/Initializer/random_uniformAdd2critic/dense/kernel/Initializer/random_uniform/mul2critic/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:d*
T0*&
_class
loc:@critic/dense/kernel
�
critic/dense/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *&
_class
loc:@critic/dense/kernel*
	container *
shape
:d
�
critic/dense/kernel/AssignAssigncritic/dense/kernel.critic/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*&
_class
loc:@critic/dense/kernel*
validate_shape(*
_output_shapes

:d
�
critic/dense/kernel/readIdentitycritic/dense/kernel*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
#critic/dense/bias/Initializer/zerosConst*$
_class
loc:@critic/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
critic/dense/bias
VariableV2*
_output_shapes
:d*
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape:d*
dtype0
�
critic/dense/bias/AssignAssigncritic/dense/bias#critic/dense/bias/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
:d
�
critic/dense/bias/readIdentitycritic/dense/bias*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
:d
�
critic/dense/MatMulMatMulstatecritic/dense/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( 
�
critic/dense/BiasAddBiasAddcritic/dense/MatMulcritic/dense/bias/read*
data_formatNHWC*'
_output_shapes
:���������d*
T0
a
critic/dense/ReluRelucritic/dense/BiasAdd*'
_output_shapes
:���������d*
T0
�
6critic/dense_1/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@critic/dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
4critic/dense_1/kernel/Initializer/random_uniform/minConst*(
_class
loc:@critic/dense_1/kernel*
valueB
 *<�y�*
dtype0*
_output_shapes
: 
�
4critic/dense_1/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@critic/dense_1/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
>critic/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6critic/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

:d*

seed *
T0*(
_class
loc:@critic/dense_1/kernel*
seed2 *
dtype0
�
4critic/dense_1/kernel/Initializer/random_uniform/subSub4critic/dense_1/kernel/Initializer/random_uniform/max4critic/dense_1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@critic/dense_1/kernel*
_output_shapes
: 
�
4critic/dense_1/kernel/Initializer/random_uniform/mulMul>critic/dense_1/kernel/Initializer/random_uniform/RandomUniform4critic/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*(
_class
loc:@critic/dense_1/kernel
�
0critic/dense_1/kernel/Initializer/random_uniformAdd4critic/dense_1/kernel/Initializer/random_uniform/mul4critic/dense_1/kernel/Initializer/random_uniform/min*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d*
T0
�
critic/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *(
_class
loc:@critic/dense_1/kernel*
	container *
shape
:d
�
critic/dense_1/kernel/AssignAssigncritic/dense_1/kernel0critic/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@critic/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
critic/dense_1/kernel/readIdentitycritic/dense_1/kernel*
T0*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d
�
%critic/dense_1/bias/Initializer/zerosConst*&
_class
loc:@critic/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
critic/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *&
_class
loc:@critic/dense_1/bias*
	container *
shape:
�
critic/dense_1/bias/AssignAssigncritic/dense_1/bias%critic/dense_1/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@critic/dense_1/bias*
validate_shape(*
_output_shapes
:
�
critic/dense_1/bias/readIdentitycritic/dense_1/bias*
T0*&
_class
loc:@critic/dense_1/bias*
_output_shapes
:
�
critic/dense_1/MatMulMatMulcritic/dense/Relucritic/dense_1/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
critic/dense_1/BiasAddBiasAddcritic/dense_1/MatMulcritic/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
v
critic/discounted_rPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
p

critic/subSubcritic/discounted_rcritic/dense_1/BiasAdd*
T0*'
_output_shapes
:���������
U
critic/SquareSquare
critic/sub*'
_output_shapes
:���������*
T0
]
critic/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
n
critic/MeanMeancritic/Squarecritic/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Y
critic/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
_
critic/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
critic/gradients/FillFillcritic/gradients/Shapecritic/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
/critic/gradients/critic/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
)critic/gradients/critic/Mean_grad/ReshapeReshapecritic/gradients/Fill/critic/gradients/critic/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes

:*
T0
t
'critic/gradients/critic/Mean_grad/ShapeShapecritic/Square*
T0*
out_type0*
_output_shapes
:
�
&critic/gradients/critic/Mean_grad/TileTile)critic/gradients/critic/Mean_grad/Reshape'critic/gradients/critic/Mean_grad/Shape*'
_output_shapes
:���������*

Tmultiples0*
T0
v
)critic/gradients/critic/Mean_grad/Shape_1Shapecritic/Square*
_output_shapes
:*
T0*
out_type0
l
)critic/gradients/critic/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
q
'critic/gradients/critic/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
&critic/gradients/critic/Mean_grad/ProdProd)critic/gradients/critic/Mean_grad/Shape_1'critic/gradients/critic/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
s
)critic/gradients/critic/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
(critic/gradients/critic/Mean_grad/Prod_1Prod)critic/gradients/critic/Mean_grad/Shape_2)critic/gradients/critic/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
m
+critic/gradients/critic/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
)critic/gradients/critic/Mean_grad/MaximumMaximum(critic/gradients/critic/Mean_grad/Prod_1+critic/gradients/critic/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
*critic/gradients/critic/Mean_grad/floordivFloorDiv&critic/gradients/critic/Mean_grad/Prod)critic/gradients/critic/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
&critic/gradients/critic/Mean_grad/CastCast*critic/gradients/critic/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
)critic/gradients/critic/Mean_grad/truedivRealDiv&critic/gradients/critic/Mean_grad/Tile&critic/gradients/critic/Mean_grad/Cast*
T0*'
_output_shapes
:���������
�
)critic/gradients/critic/Square_grad/ConstConst*^critic/gradients/critic/Mean_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
'critic/gradients/critic/Square_grad/MulMul
critic/sub)critic/gradients/critic/Square_grad/Const*
T0*'
_output_shapes
:���������
�
)critic/gradients/critic/Square_grad/Mul_1Mul)critic/gradients/critic/Mean_grad/truediv'critic/gradients/critic/Square_grad/Mul*'
_output_shapes
:���������*
T0
y
&critic/gradients/critic/sub_grad/ShapeShapecritic/discounted_r*
T0*
out_type0*
_output_shapes
:
~
(critic/gradients/critic/sub_grad/Shape_1Shapecritic/dense_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
�
6critic/gradients/critic/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&critic/gradients/critic/sub_grad/Shape(critic/gradients/critic/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
$critic/gradients/critic/sub_grad/SumSum)critic/gradients/critic/Square_grad/Mul_16critic/gradients/critic/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
(critic/gradients/critic/sub_grad/ReshapeReshape$critic/gradients/critic/sub_grad/Sum&critic/gradients/critic/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
&critic/gradients/critic/sub_grad/Sum_1Sum)critic/gradients/critic/Square_grad/Mul_18critic/gradients/critic/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
v
$critic/gradients/critic/sub_grad/NegNeg&critic/gradients/critic/sub_grad/Sum_1*
_output_shapes
:*
T0
�
*critic/gradients/critic/sub_grad/Reshape_1Reshape$critic/gradients/critic/sub_grad/Neg(critic/gradients/critic/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
1critic/gradients/critic/sub_grad/tuple/group_depsNoOp)^critic/gradients/critic/sub_grad/Reshape+^critic/gradients/critic/sub_grad/Reshape_1
�
9critic/gradients/critic/sub_grad/tuple/control_dependencyIdentity(critic/gradients/critic/sub_grad/Reshape2^critic/gradients/critic/sub_grad/tuple/group_deps*
T0*;
_class1
/-loc:@critic/gradients/critic/sub_grad/Reshape*'
_output_shapes
:���������
�
;critic/gradients/critic/sub_grad/tuple/control_dependency_1Identity*critic/gradients/critic/sub_grad/Reshape_12^critic/gradients/critic/sub_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*=
_class3
1/loc:@critic/gradients/critic/sub_grad/Reshape_1
�
8critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad;critic/gradients/critic/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC*
_output_shapes
:
�
=critic/gradients/critic/dense_1/BiasAdd_grad/tuple/group_depsNoOp9^critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGrad<^critic/gradients/critic/sub_grad/tuple/control_dependency_1
�
Ecritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity;critic/gradients/critic/sub_grad/tuple/control_dependency_1>^critic/gradients/critic/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@critic/gradients/critic/sub_grad/Reshape_1*'
_output_shapes
:���������
�
Gcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity8critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGrad>^critic/gradients/critic/dense_1/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@critic/gradients/critic/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
2critic/gradients/critic/dense_1/MatMul_grad/MatMulMatMulEcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependencycritic/dense_1/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(*
T0
�
4critic/gradients/critic/dense_1/MatMul_grad/MatMul_1MatMulcritic/dense/ReluEcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:d*
transpose_a(*
transpose_b( *
T0
�
<critic/gradients/critic/dense_1/MatMul_grad/tuple/group_depsNoOp3^critic/gradients/critic/dense_1/MatMul_grad/MatMul5^critic/gradients/critic/dense_1/MatMul_grad/MatMul_1
�
Dcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependencyIdentity2critic/gradients/critic/dense_1/MatMul_grad/MatMul=^critic/gradients/critic/dense_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@critic/gradients/critic/dense_1/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
Fcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependency_1Identity4critic/gradients/critic/dense_1/MatMul_grad/MatMul_1=^critic/gradients/critic/dense_1/MatMul_grad/tuple/group_deps*G
_class=
;9loc:@critic/gradients/critic/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:d*
T0
�
0critic/gradients/critic/dense/Relu_grad/ReluGradReluGradDcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependencycritic/dense/Relu*'
_output_shapes
:���������d*
T0
�
6critic/gradients/critic/dense/BiasAdd_grad/BiasAddGradBiasAddGrad0critic/gradients/critic/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:d*
T0
�
;critic/gradients/critic/dense/BiasAdd_grad/tuple/group_depsNoOp7^critic/gradients/critic/dense/BiasAdd_grad/BiasAddGrad1^critic/gradients/critic/dense/Relu_grad/ReluGrad
�
Ccritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependencyIdentity0critic/gradients/critic/dense/Relu_grad/ReluGrad<^critic/gradients/critic/dense/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@critic/gradients/critic/dense/Relu_grad/ReluGrad*'
_output_shapes
:���������d
�
Ecritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependency_1Identity6critic/gradients/critic/dense/BiasAdd_grad/BiasAddGrad<^critic/gradients/critic/dense/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@critic/gradients/critic/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
�
0critic/gradients/critic/dense/MatMul_grad/MatMulMatMulCcritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependencycritic/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
2critic/gradients/critic/dense/MatMul_grad/MatMul_1MatMulstateCcritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:d*
transpose_a(*
transpose_b( 
�
:critic/gradients/critic/dense/MatMul_grad/tuple/group_depsNoOp1^critic/gradients/critic/dense/MatMul_grad/MatMul3^critic/gradients/critic/dense/MatMul_grad/MatMul_1
�
Bcritic/gradients/critic/dense/MatMul_grad/tuple/control_dependencyIdentity0critic/gradients/critic/dense/MatMul_grad/MatMul;^critic/gradients/critic/dense/MatMul_grad/tuple/group_deps*C
_class9
75loc:@critic/gradients/critic/dense/MatMul_grad/MatMul*'
_output_shapes
:���������*
T0
�
Dcritic/gradients/critic/dense/MatMul_grad/tuple/control_dependency_1Identity2critic/gradients/critic/dense/MatMul_grad/MatMul_1;^critic/gradients/critic/dense/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@critic/gradients/critic/dense/MatMul_grad/MatMul_1*
_output_shapes

:d
�
 critic/beta1_power/initial_valueConst*$
_class
loc:@critic/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
critic/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape: 
�
critic/beta1_power/AssignAssigncritic/beta1_power critic/beta1_power/initial_value*
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
: 
~
critic/beta1_power/readIdentitycritic/beta1_power*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
: 
�
 critic/beta2_power/initial_valueConst*
_output_shapes
: *$
_class
loc:@critic/dense/bias*
valueB
 *w�?*
dtype0
�
critic/beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *$
_class
loc:@critic/dense/bias
�
critic/beta2_power/AssignAssigncritic/beta2_power critic/beta2_power/initial_value*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
~
critic/beta2_power/readIdentitycritic/beta2_power*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
: 
�
1critic/critic/dense/kernel/Adam/Initializer/zerosConst*&
_class
loc:@critic/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
critic/critic/dense/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@critic/dense/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
&critic/critic/dense/kernel/Adam/AssignAssigncritic/critic/dense/kernel/Adam1critic/critic/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@critic/dense/kernel*
validate_shape(*
_output_shapes

:d
�
$critic/critic/dense/kernel/Adam/readIdentitycritic/critic/dense/kernel/Adam*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
3critic/critic/dense/kernel/Adam_1/Initializer/zerosConst*&
_class
loc:@critic/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
!critic/critic/dense/kernel/Adam_1
VariableV2*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *&
_class
loc:@critic/dense/kernel
�
(critic/critic/dense/kernel/Adam_1/AssignAssign!critic/critic/dense/kernel/Adam_13critic/critic/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@critic/dense/kernel*
validate_shape(*
_output_shapes

:d
�
&critic/critic/dense/kernel/Adam_1/readIdentity!critic/critic/dense/kernel/Adam_1*
T0*&
_class
loc:@critic/dense/kernel*
_output_shapes

:d
�
/critic/critic/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:d*$
_class
loc:@critic/dense/bias*
valueBd*    
�
critic/critic/dense/bias/Adam
VariableV2*
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d
�
$critic/critic/dense/bias/Adam/AssignAssigncritic/critic/dense/bias/Adam/critic/critic/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
:d
�
"critic/critic/dense/bias/Adam/readIdentitycritic/critic/dense/bias/Adam*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
:d
�
1critic/critic/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@critic/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
critic/critic/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *$
_class
loc:@critic/dense/bias*
	container *
shape:d
�
&critic/critic/dense/bias/Adam_1/AssignAssigncritic/critic/dense/bias/Adam_11critic/critic/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
:d
�
$critic/critic/dense/bias/Adam_1/readIdentitycritic/critic/dense/bias/Adam_1*
_output_shapes
:d*
T0*$
_class
loc:@critic/dense/bias
�
3critic/critic/dense_1/kernel/Adam/Initializer/zerosConst*(
_class
loc:@critic/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
!critic/critic/dense_1/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *(
_class
loc:@critic/dense_1/kernel*
	container *
shape
:d
�
(critic/critic/dense_1/kernel/Adam/AssignAssign!critic/critic/dense_1/kernel/Adam3critic/critic/dense_1/kernel/Adam/Initializer/zeros*
T0*(
_class
loc:@critic/dense_1/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
&critic/critic/dense_1/kernel/Adam/readIdentity!critic/critic/dense_1/kernel/Adam*
T0*(
_class
loc:@critic/dense_1/kernel*
_output_shapes

:d
�
5critic/critic/dense_1/kernel/Adam_1/Initializer/zerosConst*(
_class
loc:@critic/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
#critic/critic/dense_1/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *(
_class
loc:@critic/dense_1/kernel*
	container *
shape
:d
�
*critic/critic/dense_1/kernel/Adam_1/AssignAssign#critic/critic/dense_1/kernel/Adam_15critic/critic/dense_1/kernel/Adam_1/Initializer/zeros*(
_class
loc:@critic/dense_1/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0
�
(critic/critic/dense_1/kernel/Adam_1/readIdentity#critic/critic/dense_1/kernel/Adam_1*
_output_shapes

:d*
T0*(
_class
loc:@critic/dense_1/kernel
�
1critic/critic/dense_1/bias/Adam/Initializer/zerosConst*&
_class
loc:@critic/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
critic/critic/dense_1/bias/Adam
VariableV2*
shared_name *&
_class
loc:@critic/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
&critic/critic/dense_1/bias/Adam/AssignAssigncritic/critic/dense_1/bias/Adam1critic/critic/dense_1/bias/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@critic/dense_1/bias*
validate_shape(
�
$critic/critic/dense_1/bias/Adam/readIdentitycritic/critic/dense_1/bias/Adam*&
_class
loc:@critic/dense_1/bias*
_output_shapes
:*
T0
�
3critic/critic/dense_1/bias/Adam_1/Initializer/zerosConst*&
_class
loc:@critic/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
!critic/critic/dense_1/bias/Adam_1
VariableV2*
shared_name *&
_class
loc:@critic/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
(critic/critic/dense_1/bias/Adam_1/AssignAssign!critic/critic/dense_1/bias/Adam_13critic/critic/dense_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*&
_class
loc:@critic/dense_1/bias
�
&critic/critic/dense_1/bias/Adam_1/readIdentity!critic/critic/dense_1/bias/Adam_1*&
_class
loc:@critic/dense_1/bias*
_output_shapes
:*
T0
^
critic/Adam/learning_rateConst*
valueB
 *�Q9*
dtype0*
_output_shapes
: 
V
critic/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
V
critic/Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
X
critic/Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
0critic/Adam/update_critic/dense/kernel/ApplyAdam	ApplyAdamcritic/dense/kernelcritic/critic/dense/kernel/Adam!critic/critic/dense/kernel/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonDcritic/gradients/critic/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@critic/dense/kernel*
use_nesterov( *
_output_shapes

:d
�
.critic/Adam/update_critic/dense/bias/ApplyAdam	ApplyAdamcritic/dense/biascritic/critic/dense/bias/Adamcritic/critic/dense/bias/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonEcritic/gradients/critic/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@critic/dense/bias*
use_nesterov( *
_output_shapes
:d
�
2critic/Adam/update_critic/dense_1/kernel/ApplyAdam	ApplyAdamcritic/dense_1/kernel!critic/critic/dense_1/kernel/Adam#critic/critic/dense_1/kernel/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonFcritic/gradients/critic/dense_1/MatMul_grad/tuple/control_dependency_1*(
_class
loc:@critic/dense_1/kernel*
use_nesterov( *
_output_shapes

:d*
use_locking( *
T0
�
0critic/Adam/update_critic/dense_1/bias/ApplyAdam	ApplyAdamcritic/dense_1/biascritic/critic/dense_1/bias/Adam!critic/critic/dense_1/bias/Adam_1critic/beta1_power/readcritic/beta2_power/readcritic/Adam/learning_ratecritic/Adam/beta1critic/Adam/beta2critic/Adam/epsilonGcritic/gradients/critic/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@critic/dense_1/bias*
use_nesterov( *
_output_shapes
:
�
critic/Adam/mulMulcritic/beta1_power/readcritic/Adam/beta1/^critic/Adam/update_critic/dense/bias/ApplyAdam1^critic/Adam/update_critic/dense/kernel/ApplyAdam1^critic/Adam/update_critic/dense_1/bias/ApplyAdam3^critic/Adam/update_critic/dense_1/kernel/ApplyAdam*
T0*$
_class
loc:@critic/dense/bias*
_output_shapes
: 
�
critic/Adam/AssignAssigncritic/beta1_powercritic/Adam/mul*
use_locking( *
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
: 
�
critic/Adam/mul_1Mulcritic/beta2_power/readcritic/Adam/beta2/^critic/Adam/update_critic/dense/bias/ApplyAdam1^critic/Adam/update_critic/dense/kernel/ApplyAdam1^critic/Adam/update_critic/dense_1/bias/ApplyAdam3^critic/Adam/update_critic/dense_1/kernel/ApplyAdam*
_output_shapes
: *
T0*$
_class
loc:@critic/dense/bias
�
critic/Adam/Assign_1Assigncritic/beta2_powercritic/Adam/mul_1*
use_locking( *
T0*$
_class
loc:@critic/dense/bias*
validate_shape(*
_output_shapes
: 
�
critic/AdamNoOp^critic/Adam/Assign^critic/Adam/Assign_1/^critic/Adam/update_critic/dense/bias/ApplyAdam1^critic/Adam/update_critic/dense/kernel/ApplyAdam1^critic/Adam/update_critic/dense_1/bias/ApplyAdam3^critic/Adam/update_critic/dense_1/kernel/ApplyAdam
�
0pi/dense/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@pi/dense/kernel*
valueB"   d   *
dtype0*
_output_shapes
:
�
.pi/dense/kernel/Initializer/random_uniform/minConst*"
_class
loc:@pi/dense/kernel*
valueB
 *��u�*
dtype0*
_output_shapes
: 
�
.pi/dense/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@pi/dense/kernel*
valueB
 *��u>*
dtype0*
_output_shapes
: 
�
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2 *
dtype0*
_output_shapes

:d
�
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
�
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*"
_class
loc:@pi/dense/kernel
�
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d
�
pi/dense/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
:d
�
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
_output_shapes

:d*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d
�
pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
pi/dense/bias
VariableV2*
_output_shapes
:d*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape:d*
dtype0
�
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0
t
pi/dense/bias/readIdentitypi/dense/bias*
_output_shapes
:d*
T0* 
_class
loc:@pi/dense/bias
�
pi/dense/MatMulMatMulstatepi/dense/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( *
T0
�
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������d
Y
pi/dense/ReluRelupi/dense/BiasAdd*
T0*'
_output_shapes
:���������d
�
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
0pi/dense_1/kernel/Initializer/random_uniform/minConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *<�y�*
dtype0*
_output_shapes
: 
�
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*$
_class
loc:@pi/dense_1/kernel*
seed2 
�
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
�
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*$
_class
loc:@pi/dense_1/kernel
�
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:d
�
pi/dense_1/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:d
�
!pi/dense_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias*
valueB*    
�
pi/dense_1/bias
VariableV2*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
�
pi/dense_1/MatMulMatMulpi/dense/Relupi/dense_1/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
]
pi/dense_1/TanhTanhpi/dense_1/BiasAdd*'
_output_shapes
:���������*
T0
M
pi/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *   @
Z
pi/mulMulpi/mul/xpi/dense_1/Tanh*'
_output_shapes
:���������*
T0
�
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_2/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
0pi/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *$
_class
loc:@pi/dense_2/kernel*
valueB
 *<�y�
�
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@pi/dense_2/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*$
_class
loc:@pi/dense_2/kernel*
seed2 
�
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
�
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*$
_class
loc:@pi/dense_2/kernel
�
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:d*
T0
�
pi/dense_2/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:d
�
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:d
�
!pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0
�
pi/dense_2/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:
�
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
�
pi/dense_2/MatMulMatMulpi/dense/Relupi/dense_2/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
�
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
e
pi/dense_2/SoftplusSoftpluspi/dense_2/BiasAdd*'
_output_shapes
:���������*
T0
S
pi/Normal/locIdentitypi/mul*'
_output_shapes
:���������*
T0
b
pi/Normal/scaleIdentitypi/dense_2/Softplus*'
_output_shapes
:���������*
T0
�
3oldpi/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
_class
loc:@oldpi/dense/kernel*
valueB"   d   
�
1oldpi/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *%
_class
loc:@oldpi/dense/kernel*
valueB
 *��u�
�
1oldpi/dense/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@oldpi/dense/kernel*
valueB
 *��u>*
dtype0*
_output_shapes
: 
�
;oldpi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform3oldpi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*%
_class
loc:@oldpi/dense/kernel*
seed2 
�
1oldpi/dense/kernel/Initializer/random_uniform/subSub1oldpi/dense/kernel/Initializer/random_uniform/max1oldpi/dense/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@oldpi/dense/kernel*
_output_shapes
: 
�
1oldpi/dense/kernel/Initializer/random_uniform/mulMul;oldpi/dense/kernel/Initializer/random_uniform/RandomUniform1oldpi/dense/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@oldpi/dense/kernel*
_output_shapes

:d
�
-oldpi/dense/kernel/Initializer/random_uniformAdd1oldpi/dense/kernel/Initializer/random_uniform/mul1oldpi/dense/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@oldpi/dense/kernel*
_output_shapes

:d
�
oldpi/dense/kernel
VariableV2*
shared_name *%
_class
loc:@oldpi/dense/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
oldpi/dense/kernel/AssignAssignoldpi/dense/kernel-oldpi/dense/kernel/Initializer/random_uniform*%
_class
loc:@oldpi/dense/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0
�
oldpi/dense/kernel/readIdentityoldpi/dense/kernel*
T0*%
_class
loc:@oldpi/dense/kernel*
_output_shapes

:d
�
"oldpi/dense/bias/Initializer/zerosConst*
_output_shapes
:d*#
_class
loc:@oldpi/dense/bias*
valueBd*    *
dtype0
�
oldpi/dense/bias
VariableV2*
shared_name *#
_class
loc:@oldpi/dense/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d
�
oldpi/dense/bias/AssignAssignoldpi/dense/bias"oldpi/dense/bias/Initializer/zeros*
T0*#
_class
loc:@oldpi/dense/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
}
oldpi/dense/bias/readIdentityoldpi/dense/bias*
T0*#
_class
loc:@oldpi/dense/bias*
_output_shapes
:d
�
oldpi/dense/MatMulMatMulstateoldpi/dense/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( *
T0
�
oldpi/dense/BiasAddBiasAddoldpi/dense/MatMuloldpi/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������d
_
oldpi/dense/ReluReluoldpi/dense/BiasAdd*
T0*'
_output_shapes
:���������d
�
5oldpi/dense_1/kernel/Initializer/random_uniform/shapeConst*'
_class
loc:@oldpi/dense_1/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
3oldpi/dense_1/kernel/Initializer/random_uniform/minConst*'
_class
loc:@oldpi/dense_1/kernel*
valueB
 *<�y�*
dtype0*
_output_shapes
: 
�
3oldpi/dense_1/kernel/Initializer/random_uniform/maxConst*'
_class
loc:@oldpi/dense_1/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
=oldpi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform5oldpi/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*'
_class
loc:@oldpi/dense_1/kernel*
seed2 *
dtype0*
_output_shapes

:d
�
3oldpi/dense_1/kernel/Initializer/random_uniform/subSub3oldpi/dense_1/kernel/Initializer/random_uniform/max3oldpi/dense_1/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@oldpi/dense_1/kernel*
_output_shapes
: 
�
3oldpi/dense_1/kernel/Initializer/random_uniform/mulMul=oldpi/dense_1/kernel/Initializer/random_uniform/RandomUniform3oldpi/dense_1/kernel/Initializer/random_uniform/sub*
T0*'
_class
loc:@oldpi/dense_1/kernel*
_output_shapes

:d
�
/oldpi/dense_1/kernel/Initializer/random_uniformAdd3oldpi/dense_1/kernel/Initializer/random_uniform/mul3oldpi/dense_1/kernel/Initializer/random_uniform/min*'
_class
loc:@oldpi/dense_1/kernel*
_output_shapes

:d*
T0
�
oldpi/dense_1/kernel
VariableV2*
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *'
_class
loc:@oldpi/dense_1/kernel*
	container 
�
oldpi/dense_1/kernel/AssignAssignoldpi/dense_1/kernel/oldpi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*'
_class
loc:@oldpi/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
oldpi/dense_1/kernel/readIdentityoldpi/dense_1/kernel*
_output_shapes

:d*
T0*'
_class
loc:@oldpi/dense_1/kernel
�
$oldpi/dense_1/bias/Initializer/zerosConst*%
_class
loc:@oldpi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
oldpi/dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@oldpi/dense_1/bias*
	container *
shape:
�
oldpi/dense_1/bias/AssignAssignoldpi/dense_1/bias$oldpi/dense_1/bias/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@oldpi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
oldpi/dense_1/bias/readIdentityoldpi/dense_1/bias*
T0*%
_class
loc:@oldpi/dense_1/bias*
_output_shapes
:
�
oldpi/dense_1/MatMulMatMuloldpi/dense/Reluoldpi/dense_1/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
oldpi/dense_1/BiasAddBiasAddoldpi/dense_1/MatMuloldpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
c
oldpi/dense_1/TanhTanholdpi/dense_1/BiasAdd*
T0*'
_output_shapes
:���������
P
oldpi/mul/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
c
	oldpi/mulMuloldpi/mul/xoldpi/dense_1/Tanh*'
_output_shapes
:���������*
T0
�
5oldpi/dense_2/kernel/Initializer/random_uniform/shapeConst*'
_class
loc:@oldpi/dense_2/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
3oldpi/dense_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *'
_class
loc:@oldpi/dense_2/kernel*
valueB
 *<�y�*
dtype0
�
3oldpi/dense_2/kernel/Initializer/random_uniform/maxConst*'
_class
loc:@oldpi/dense_2/kernel*
valueB
 *<�y>*
dtype0*
_output_shapes
: 
�
=oldpi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform5oldpi/dense_2/kernel/Initializer/random_uniform/shape*

seed *
T0*'
_class
loc:@oldpi/dense_2/kernel*
seed2 *
dtype0*
_output_shapes

:d
�
3oldpi/dense_2/kernel/Initializer/random_uniform/subSub3oldpi/dense_2/kernel/Initializer/random_uniform/max3oldpi/dense_2/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@oldpi/dense_2/kernel*
_output_shapes
: 
�
3oldpi/dense_2/kernel/Initializer/random_uniform/mulMul=oldpi/dense_2/kernel/Initializer/random_uniform/RandomUniform3oldpi/dense_2/kernel/Initializer/random_uniform/sub*
T0*'
_class
loc:@oldpi/dense_2/kernel*
_output_shapes

:d
�
/oldpi/dense_2/kernel/Initializer/random_uniformAdd3oldpi/dense_2/kernel/Initializer/random_uniform/mul3oldpi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:d*
T0*'
_class
loc:@oldpi/dense_2/kernel
�
oldpi/dense_2/kernel
VariableV2*'
_class
loc:@oldpi/dense_2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name 
�
oldpi/dense_2/kernel/AssignAssignoldpi/dense_2/kernel/oldpi/dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*'
_class
loc:@oldpi/dense_2/kernel*
validate_shape(*
_output_shapes

:d
�
oldpi/dense_2/kernel/readIdentityoldpi/dense_2/kernel*
_output_shapes

:d*
T0*'
_class
loc:@oldpi/dense_2/kernel
�
$oldpi/dense_2/bias/Initializer/zerosConst*%
_class
loc:@oldpi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
oldpi/dense_2/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *%
_class
loc:@oldpi/dense_2/bias*
	container *
shape:
�
oldpi/dense_2/bias/AssignAssignoldpi/dense_2/bias$oldpi/dense_2/bias/Initializer/zeros*
use_locking(*
T0*%
_class
loc:@oldpi/dense_2/bias*
validate_shape(*
_output_shapes
:
�
oldpi/dense_2/bias/readIdentityoldpi/dense_2/bias*
T0*%
_class
loc:@oldpi/dense_2/bias*
_output_shapes
:
�
oldpi/dense_2/MatMulMatMuloldpi/dense/Reluoldpi/dense_2/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
oldpi/dense_2/BiasAddBiasAddoldpi/dense_2/MatMuloldpi/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
k
oldpi/dense_2/SoftplusSoftplusoldpi/dense_2/BiasAdd*
T0*'
_output_shapes
:���������
Y
oldpi/Normal/locIdentity	oldpi/mul*
T0*'
_output_shapes
:���������
h
oldpi/Normal/scaleIdentityoldpi/dense_2/Softplus*
T0*'
_output_shapes
:���������
_
pi/Normal/sample/sample_shapeConst*
value	B :*
dtype0*
_output_shapes
: 
i
pi/Normal/sample/sample_shape_1Const*
_output_shapes
:*
valueB:*
dtype0
o
"pi/Normal/batch_shape_tensor/ShapeShapepi/Normal/loc*
T0*
out_type0*
_output_shapes
:
s
$pi/Normal/batch_shape_tensor/Shape_1Shapepi/Normal/scale*
_output_shapes
:*
T0*
out_type0
�
*pi/Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs"pi/Normal/batch_shape_tensor/Shape$pi/Normal/batch_shape_tensor/Shape_1*
_output_shapes
:*
T0
j
 pi/Normal/sample/concat/values_0Const*
valueB:*
dtype0*
_output_shapes
:
^
pi/Normal/sample/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
pi/Normal/sample/concatConcatV2 pi/Normal/sample/concat/values_0*pi/Normal/batch_shape_tensor/BroadcastArgspi/Normal/sample/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
h
#pi/Normal/sample/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
j
%pi/Normal/sample/random_normal/stddevConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
3pi/Normal/sample/random_normal/RandomStandardNormalRandomStandardNormalpi/Normal/sample/concat*

seed *
T0*
dtype0*4
_output_shapes"
 :������������������*
seed2 
�
"pi/Normal/sample/random_normal/mulMul3pi/Normal/sample/random_normal/RandomStandardNormal%pi/Normal/sample/random_normal/stddev*4
_output_shapes"
 :������������������*
T0
�
pi/Normal/sample/random_normalAdd"pi/Normal/sample/random_normal/mul#pi/Normal/sample/random_normal/mean*
T0*4
_output_shapes"
 :������������������
�
pi/Normal/sample/mulMulpi/Normal/sample/random_normalpi/Normal/scale*4
_output_shapes"
 :������������������*
T0

pi/Normal/sample/addAddpi/Normal/sample/mulpi/Normal/loc*
T0*4
_output_shapes"
 :������������������
j
pi/Normal/sample/ShapeShapepi/Normal/sample/add*
_output_shapes
:*
T0*
out_type0
n
$pi/Normal/sample/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
p
&pi/Normal/sample/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
p
&pi/Normal/sample/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
pi/Normal/sample/strided_sliceStridedSlicepi/Normal/sample/Shape$pi/Normal/sample/strided_slice/stack&pi/Normal/sample/strided_slice/stack_1&pi/Normal/sample/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
`
pi/Normal/sample/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
pi/Normal/sample/concat_1ConcatV2pi/Normal/sample/sample_shape_1pi/Normal/sample/strided_slicepi/Normal/sample/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
pi/Normal/sample/ReshapeReshapepi/Normal/sample/addpi/Normal/sample/concat_1*
T0*
Tshape0*+
_output_shapes
:���������
�
sample_action/SqueezeSqueezepi/Normal/sample/Reshape*'
_output_shapes
:���������*
squeeze_dims
 *
T0
�
update_oldpi/AssignAssignoldpi/dense/kernelpi/dense/kernel/read*
use_locking( *
T0*%
_class
loc:@oldpi/dense/kernel*
validate_shape(*
_output_shapes

:d
�
update_oldpi/Assign_1Assignoldpi/dense/biaspi/dense/bias/read*
use_locking( *
T0*#
_class
loc:@oldpi/dense/bias*
validate_shape(*
_output_shapes
:d
�
update_oldpi/Assign_2Assignoldpi/dense_1/kernelpi/dense_1/kernel/read*
validate_shape(*
_output_shapes

:d*
use_locking( *
T0*'
_class
loc:@oldpi/dense_1/kernel
�
update_oldpi/Assign_3Assignoldpi/dense_1/biaspi/dense_1/bias/read*
_output_shapes
:*
use_locking( *
T0*%
_class
loc:@oldpi/dense_1/bias*
validate_shape(
�
update_oldpi/Assign_4Assignoldpi/dense_2/kernelpi/dense_2/kernel/read*
use_locking( *
T0*'
_class
loc:@oldpi/dense_2/kernel*
validate_shape(*
_output_shapes

:d
�
update_oldpi/Assign_5Assignoldpi/dense_2/biaspi/dense_2/bias/read*
T0*%
_class
loc:@oldpi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking( 
i
actionPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
l
	advantagePlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
n
pi/Normal/prob/standardize/subSubactionpi/Normal/loc*
T0*'
_output_shapes
:���������
�
"pi/Normal/prob/standardize/truedivRealDivpi/Normal/prob/standardize/subpi/Normal/scale*
T0*'
_output_shapes
:���������
u
pi/Normal/prob/SquareSquare"pi/Normal/prob/standardize/truediv*
T0*'
_output_shapes
:���������
Y
pi/Normal/prob/mul/xConst*
valueB
 *   �*
dtype0*
_output_shapes
: 
x
pi/Normal/prob/mulMulpi/Normal/prob/mul/xpi/Normal/prob/Square*
T0*'
_output_shapes
:���������
\
pi/Normal/prob/LogLogpi/Normal/scale*
T0*'
_output_shapes
:���������
Y
pi/Normal/prob/add/xConst*
valueB
 *�?k?*
dtype0*
_output_shapes
: 
u
pi/Normal/prob/addAddpi/Normal/prob/add/xpi/Normal/prob/Log*
T0*'
_output_shapes
:���������
s
pi/Normal/prob/subSubpi/Normal/prob/mulpi/Normal/prob/add*'
_output_shapes
:���������*
T0
_
pi/Normal/prob/ExpExppi/Normal/prob/sub*
T0*'
_output_shapes
:���������
t
!oldpi/Normal/prob/standardize/subSubactionoldpi/Normal/loc*
T0*'
_output_shapes
:���������
�
%oldpi/Normal/prob/standardize/truedivRealDiv!oldpi/Normal/prob/standardize/suboldpi/Normal/scale*
T0*'
_output_shapes
:���������
{
oldpi/Normal/prob/SquareSquare%oldpi/Normal/prob/standardize/truediv*'
_output_shapes
:���������*
T0
\
oldpi/Normal/prob/mul/xConst*
valueB
 *   �*
dtype0*
_output_shapes
: 
�
oldpi/Normal/prob/mulMuloldpi/Normal/prob/mul/xoldpi/Normal/prob/Square*
T0*'
_output_shapes
:���������
b
oldpi/Normal/prob/LogLogoldpi/Normal/scale*
T0*'
_output_shapes
:���������
\
oldpi/Normal/prob/add/xConst*
dtype0*
_output_shapes
: *
valueB
 *�?k?
~
oldpi/Normal/prob/addAddoldpi/Normal/prob/add/xoldpi/Normal/prob/Log*'
_output_shapes
:���������*
T0
|
oldpi/Normal/prob/subSuboldpi/Normal/prob/muloldpi/Normal/prob/add*
T0*'
_output_shapes
:���������
e
oldpi/Normal/prob/ExpExpoldpi/Normal/prob/sub*
T0*'
_output_shapes
:���������
~
loss/surrogate/truedivRealDivpi/Normal/prob/Expoldpi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
n
loss/surrogate/mulMulloss/surrogate/truediv	advantage*'
_output_shapes
:���������*
T0
a
loss/clip_by_value/Minimum/yConst*
valueB
 *���?*
dtype0*
_output_shapes
: 
�
loss/clip_by_value/MinimumMinimumloss/surrogate/truedivloss/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
Y
loss/clip_by_value/yConst*
valueB
 *��L?*
dtype0*
_output_shapes
: 
�
loss/clip_by_valueMaximumloss/clip_by_value/Minimumloss/clip_by_value/y*
T0*'
_output_shapes
:���������
`
loss/mulMulloss/clip_by_value	advantage*
T0*'
_output_shapes
:���������
g
loss/MinimumMinimumloss/surrogate/mulloss/mul*
T0*'
_output_shapes
:���������
[

loss/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
i
	loss/MeanMeanloss/Minimum
loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
;
loss/NegNeg	loss/Mean*
T0*
_output_shapes
: 
Y
atrain/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
_
atrain/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
atrain/gradients/FillFillatrain/gradients/Shapeatrain/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
a
"atrain/gradients/loss/Neg_grad/NegNegatrain/gradients/Fill*
T0*
_output_shapes
: 
~
-atrain/gradients/loss/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
'atrain/gradients/loss/Mean_grad/ReshapeReshape"atrain/gradients/loss/Neg_grad/Neg-atrain/gradients/loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
q
%atrain/gradients/loss/Mean_grad/ShapeShapeloss/Minimum*
_output_shapes
:*
T0*
out_type0
�
$atrain/gradients/loss/Mean_grad/TileTile'atrain/gradients/loss/Mean_grad/Reshape%atrain/gradients/loss/Mean_grad/Shape*
T0*'
_output_shapes
:���������*

Tmultiples0
s
'atrain/gradients/loss/Mean_grad/Shape_1Shapeloss/Minimum*
_output_shapes
:*
T0*
out_type0
j
'atrain/gradients/loss/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
o
%atrain/gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
$atrain/gradients/loss/Mean_grad/ProdProd'atrain/gradients/loss/Mean_grad/Shape_1%atrain/gradients/loss/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
q
'atrain/gradients/loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
&atrain/gradients/loss/Mean_grad/Prod_1Prod'atrain/gradients/loss/Mean_grad/Shape_2'atrain/gradients/loss/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
)atrain/gradients/loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
'atrain/gradients/loss/Mean_grad/MaximumMaximum&atrain/gradients/loss/Mean_grad/Prod_1)atrain/gradients/loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
(atrain/gradients/loss/Mean_grad/floordivFloorDiv$atrain/gradients/loss/Mean_grad/Prod'atrain/gradients/loss/Mean_grad/Maximum*
_output_shapes
: *
T0
�
$atrain/gradients/loss/Mean_grad/CastCast(atrain/gradients/loss/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
'atrain/gradients/loss/Mean_grad/truedivRealDiv$atrain/gradients/loss/Mean_grad/Tile$atrain/gradients/loss/Mean_grad/Cast*'
_output_shapes
:���������*
T0
z
(atrain/gradients/loss/Minimum_grad/ShapeShapeloss/surrogate/mul*
_output_shapes
:*
T0*
out_type0
r
*atrain/gradients/loss/Minimum_grad/Shape_1Shapeloss/mul*
_output_shapes
:*
T0*
out_type0
�
*atrain/gradients/loss/Minimum_grad/Shape_2Shape'atrain/gradients/loss/Mean_grad/truediv*
_output_shapes
:*
T0*
out_type0
s
.atrain/gradients/loss/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
(atrain/gradients/loss/Minimum_grad/zerosFill*atrain/gradients/loss/Minimum_grad/Shape_2.atrain/gradients/loss/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������
�
,atrain/gradients/loss/Minimum_grad/LessEqual	LessEqualloss/surrogate/mulloss/mul*
T0*'
_output_shapes
:���������
�
8atrain/gradients/loss/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs(atrain/gradients/loss/Minimum_grad/Shape*atrain/gradients/loss/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
)atrain/gradients/loss/Minimum_grad/SelectSelect,atrain/gradients/loss/Minimum_grad/LessEqual'atrain/gradients/loss/Mean_grad/truediv(atrain/gradients/loss/Minimum_grad/zeros*
T0*'
_output_shapes
:���������
�
+atrain/gradients/loss/Minimum_grad/Select_1Select,atrain/gradients/loss/Minimum_grad/LessEqual(atrain/gradients/loss/Minimum_grad/zeros'atrain/gradients/loss/Mean_grad/truediv*
T0*'
_output_shapes
:���������
�
&atrain/gradients/loss/Minimum_grad/SumSum)atrain/gradients/loss/Minimum_grad/Select8atrain/gradients/loss/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
*atrain/gradients/loss/Minimum_grad/ReshapeReshape&atrain/gradients/loss/Minimum_grad/Sum(atrain/gradients/loss/Minimum_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
(atrain/gradients/loss/Minimum_grad/Sum_1Sum+atrain/gradients/loss/Minimum_grad/Select_1:atrain/gradients/loss/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
,atrain/gradients/loss/Minimum_grad/Reshape_1Reshape(atrain/gradients/loss/Minimum_grad/Sum_1*atrain/gradients/loss/Minimum_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
3atrain/gradients/loss/Minimum_grad/tuple/group_depsNoOp+^atrain/gradients/loss/Minimum_grad/Reshape-^atrain/gradients/loss/Minimum_grad/Reshape_1
�
;atrain/gradients/loss/Minimum_grad/tuple/control_dependencyIdentity*atrain/gradients/loss/Minimum_grad/Reshape4^atrain/gradients/loss/Minimum_grad/tuple/group_deps*
T0*=
_class3
1/loc:@atrain/gradients/loss/Minimum_grad/Reshape*'
_output_shapes
:���������
�
=atrain/gradients/loss/Minimum_grad/tuple/control_dependency_1Identity,atrain/gradients/loss/Minimum_grad/Reshape_14^atrain/gradients/loss/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@atrain/gradients/loss/Minimum_grad/Reshape_1*'
_output_shapes
:���������
�
.atrain/gradients/loss/surrogate/mul_grad/ShapeShapeloss/surrogate/truediv*
T0*
out_type0*
_output_shapes
:
y
0atrain/gradients/loss/surrogate/mul_grad/Shape_1Shape	advantage*
T0*
out_type0*
_output_shapes
:
�
>atrain/gradients/loss/surrogate/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/loss/surrogate/mul_grad/Shape0atrain/gradients/loss/surrogate/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
,atrain/gradients/loss/surrogate/mul_grad/MulMul;atrain/gradients/loss/Minimum_grad/tuple/control_dependency	advantage*'
_output_shapes
:���������*
T0
�
,atrain/gradients/loss/surrogate/mul_grad/SumSum,atrain/gradients/loss/surrogate/mul_grad/Mul>atrain/gradients/loss/surrogate/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
0atrain/gradients/loss/surrogate/mul_grad/ReshapeReshape,atrain/gradients/loss/surrogate/mul_grad/Sum.atrain/gradients/loss/surrogate/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
.atrain/gradients/loss/surrogate/mul_grad/Mul_1Mulloss/surrogate/truediv;atrain/gradients/loss/Minimum_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������
�
.atrain/gradients/loss/surrogate/mul_grad/Sum_1Sum.atrain/gradients/loss/surrogate/mul_grad/Mul_1@atrain/gradients/loss/surrogate/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
2atrain/gradients/loss/surrogate/mul_grad/Reshape_1Reshape.atrain/gradients/loss/surrogate/mul_grad/Sum_10atrain/gradients/loss/surrogate/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
9atrain/gradients/loss/surrogate/mul_grad/tuple/group_depsNoOp1^atrain/gradients/loss/surrogate/mul_grad/Reshape3^atrain/gradients/loss/surrogate/mul_grad/Reshape_1
�
Aatrain/gradients/loss/surrogate/mul_grad/tuple/control_dependencyIdentity0atrain/gradients/loss/surrogate/mul_grad/Reshape:^atrain/gradients/loss/surrogate/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/loss/surrogate/mul_grad/Reshape*'
_output_shapes
:���������
�
Catrain/gradients/loss/surrogate/mul_grad/tuple/control_dependency_1Identity2atrain/gradients/loss/surrogate/mul_grad/Reshape_1:^atrain/gradients/loss/surrogate/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@atrain/gradients/loss/surrogate/mul_grad/Reshape_1*'
_output_shapes
:���������
v
$atrain/gradients/loss/mul_grad/ShapeShapeloss/clip_by_value*
T0*
out_type0*
_output_shapes
:
o
&atrain/gradients/loss/mul_grad/Shape_1Shape	advantage*
T0*
out_type0*
_output_shapes
:
�
4atrain/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs$atrain/gradients/loss/mul_grad/Shape&atrain/gradients/loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
"atrain/gradients/loss/mul_grad/MulMul=atrain/gradients/loss/Minimum_grad/tuple/control_dependency_1	advantage*
T0*'
_output_shapes
:���������
�
"atrain/gradients/loss/mul_grad/SumSum"atrain/gradients/loss/mul_grad/Mul4atrain/gradients/loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
&atrain/gradients/loss/mul_grad/ReshapeReshape"atrain/gradients/loss/mul_grad/Sum$atrain/gradients/loss/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
$atrain/gradients/loss/mul_grad/Mul_1Mulloss/clip_by_value=atrain/gradients/loss/Minimum_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������
�
$atrain/gradients/loss/mul_grad/Sum_1Sum$atrain/gradients/loss/mul_grad/Mul_16atrain/gradients/loss/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(atrain/gradients/loss/mul_grad/Reshape_1Reshape$atrain/gradients/loss/mul_grad/Sum_1&atrain/gradients/loss/mul_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0
�
/atrain/gradients/loss/mul_grad/tuple/group_depsNoOp'^atrain/gradients/loss/mul_grad/Reshape)^atrain/gradients/loss/mul_grad/Reshape_1
�
7atrain/gradients/loss/mul_grad/tuple/control_dependencyIdentity&atrain/gradients/loss/mul_grad/Reshape0^atrain/gradients/loss/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@atrain/gradients/loss/mul_grad/Reshape*'
_output_shapes
:���������
�
9atrain/gradients/loss/mul_grad/tuple/control_dependency_1Identity(atrain/gradients/loss/mul_grad/Reshape_10^atrain/gradients/loss/mul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@atrain/gradients/loss/mul_grad/Reshape_1*'
_output_shapes
:���������
�
.atrain/gradients/loss/clip_by_value_grad/ShapeShapeloss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:
s
0atrain/gradients/loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
�
0atrain/gradients/loss/clip_by_value_grad/Shape_2Shape7atrain/gradients/loss/mul_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
y
4atrain/gradients/loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
.atrain/gradients/loss/clip_by_value_grad/zerosFill0atrain/gradients/loss/clip_by_value_grad/Shape_24atrain/gradients/loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������
�
5atrain/gradients/loss/clip_by_value_grad/GreaterEqualGreaterEqualloss/clip_by_value/Minimumloss/clip_by_value/y*
T0*'
_output_shapes
:���������
�
>atrain/gradients/loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/loss/clip_by_value_grad/Shape0atrain/gradients/loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
/atrain/gradients/loss/clip_by_value_grad/SelectSelect5atrain/gradients/loss/clip_by_value_grad/GreaterEqual7atrain/gradients/loss/mul_grad/tuple/control_dependency.atrain/gradients/loss/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
1atrain/gradients/loss/clip_by_value_grad/Select_1Select5atrain/gradients/loss/clip_by_value_grad/GreaterEqual.atrain/gradients/loss/clip_by_value_grad/zeros7atrain/gradients/loss/mul_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������
�
,atrain/gradients/loss/clip_by_value_grad/SumSum/atrain/gradients/loss/clip_by_value_grad/Select>atrain/gradients/loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
0atrain/gradients/loss/clip_by_value_grad/ReshapeReshape,atrain/gradients/loss/clip_by_value_grad/Sum.atrain/gradients/loss/clip_by_value_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
.atrain/gradients/loss/clip_by_value_grad/Sum_1Sum1atrain/gradients/loss/clip_by_value_grad/Select_1@atrain/gradients/loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
2atrain/gradients/loss/clip_by_value_grad/Reshape_1Reshape.atrain/gradients/loss/clip_by_value_grad/Sum_10atrain/gradients/loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
9atrain/gradients/loss/clip_by_value_grad/tuple/group_depsNoOp1^atrain/gradients/loss/clip_by_value_grad/Reshape3^atrain/gradients/loss/clip_by_value_grad/Reshape_1
�
Aatrain/gradients/loss/clip_by_value_grad/tuple/control_dependencyIdentity0atrain/gradients/loss/clip_by_value_grad/Reshape:^atrain/gradients/loss/clip_by_value_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/loss/clip_by_value_grad/Reshape*'
_output_shapes
:���������
�
Catrain/gradients/loss/clip_by_value_grad/tuple/control_dependency_1Identity2atrain/gradients/loss/clip_by_value_grad/Reshape_1:^atrain/gradients/loss/clip_by_value_grad/tuple/group_deps*
_output_shapes
: *
T0*E
_class;
97loc:@atrain/gradients/loss/clip_by_value_grad/Reshape_1
�
6atrain/gradients/loss/clip_by_value/Minimum_grad/ShapeShapeloss/surrogate/truediv*
T0*
out_type0*
_output_shapes
:
{
8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_2ShapeAatrain/gradients/loss/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
�
<atrain/gradients/loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
6atrain/gradients/loss/clip_by_value/Minimum_grad/zerosFill8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_2<atrain/gradients/loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:���������
�
:atrain/gradients/loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/surrogate/truedivloss/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
�
Fatrain/gradients/loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs6atrain/gradients/loss/clip_by_value/Minimum_grad/Shape8atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
7atrain/gradients/loss/clip_by_value/Minimum_grad/SelectSelect:atrain/gradients/loss/clip_by_value/Minimum_grad/LessEqualAatrain/gradients/loss/clip_by_value_grad/tuple/control_dependency6atrain/gradients/loss/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
9atrain/gradients/loss/clip_by_value/Minimum_grad/Select_1Select:atrain/gradients/loss/clip_by_value/Minimum_grad/LessEqual6atrain/gradients/loss/clip_by_value/Minimum_grad/zerosAatrain/gradients/loss/clip_by_value_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������
�
4atrain/gradients/loss/clip_by_value/Minimum_grad/SumSum7atrain/gradients/loss/clip_by_value/Minimum_grad/SelectFatrain/gradients/loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
8atrain/gradients/loss/clip_by_value/Minimum_grad/ReshapeReshape4atrain/gradients/loss/clip_by_value/Minimum_grad/Sum6atrain/gradients/loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
6atrain/gradients/loss/clip_by_value/Minimum_grad/Sum_1Sum9atrain/gradients/loss/clip_by_value/Minimum_grad/Select_1Hatrain/gradients/loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
:atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1Reshape6atrain/gradients/loss/clip_by_value/Minimum_grad/Sum_18atrain/gradients/loss/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Aatrain/gradients/loss/clip_by_value/Minimum_grad/tuple/group_depsNoOp9^atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape;^atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1
�
Iatrain/gradients/loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity8atrain/gradients/loss/clip_by_value/Minimum_grad/ReshapeB^atrain/gradients/loss/clip_by_value/Minimum_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*K
_classA
?=loc:@atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape
�
Katrain/gradients/loss/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity:atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1B^atrain/gradients/loss/clip_by_value/Minimum_grad/tuple/group_deps*
_output_shapes
: *
T0*M
_classC
A?loc:@atrain/gradients/loss/clip_by_value/Minimum_grad/Reshape_1
�
atrain/gradients/AddNAddNAatrain/gradients/loss/surrogate/mul_grad/tuple/control_dependencyIatrain/gradients/loss/clip_by_value/Minimum_grad/tuple/control_dependency*
T0*C
_class9
75loc:@atrain/gradients/loss/surrogate/mul_grad/Reshape*
N*'
_output_shapes
:���������
�
2atrain/gradients/loss/surrogate/truediv_grad/ShapeShapepi/Normal/prob/Exp*
T0*
out_type0*
_output_shapes
:
�
4atrain/gradients/loss/surrogate/truediv_grad/Shape_1Shapeoldpi/Normal/prob/Exp*
_output_shapes
:*
T0*
out_type0
�
Batrain/gradients/loss/surrogate/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs2atrain/gradients/loss/surrogate/truediv_grad/Shape4atrain/gradients/loss/surrogate/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
4atrain/gradients/loss/surrogate/truediv_grad/RealDivRealDivatrain/gradients/AddNoldpi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
�
0atrain/gradients/loss/surrogate/truediv_grad/SumSum4atrain/gradients/loss/surrogate/truediv_grad/RealDivBatrain/gradients/loss/surrogate/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
4atrain/gradients/loss/surrogate/truediv_grad/ReshapeReshape0atrain/gradients/loss/surrogate/truediv_grad/Sum2atrain/gradients/loss/surrogate/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
}
0atrain/gradients/loss/surrogate/truediv_grad/NegNegpi/Normal/prob/Exp*'
_output_shapes
:���������*
T0
�
6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_1RealDiv0atrain/gradients/loss/surrogate/truediv_grad/Negoldpi/Normal/prob/Exp*'
_output_shapes
:���������*
T0
�
6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_2RealDiv6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_1oldpi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
�
0atrain/gradients/loss/surrogate/truediv_grad/mulMulatrain/gradients/AddN6atrain/gradients/loss/surrogate/truediv_grad/RealDiv_2*'
_output_shapes
:���������*
T0
�
2atrain/gradients/loss/surrogate/truediv_grad/Sum_1Sum0atrain/gradients/loss/surrogate/truediv_grad/mulDatrain/gradients/loss/surrogate/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
6atrain/gradients/loss/surrogate/truediv_grad/Reshape_1Reshape2atrain/gradients/loss/surrogate/truediv_grad/Sum_14atrain/gradients/loss/surrogate/truediv_grad/Shape_1*'
_output_shapes
:���������*
T0*
Tshape0
�
=atrain/gradients/loss/surrogate/truediv_grad/tuple/group_depsNoOp5^atrain/gradients/loss/surrogate/truediv_grad/Reshape7^atrain/gradients/loss/surrogate/truediv_grad/Reshape_1
�
Eatrain/gradients/loss/surrogate/truediv_grad/tuple/control_dependencyIdentity4atrain/gradients/loss/surrogate/truediv_grad/Reshape>^atrain/gradients/loss/surrogate/truediv_grad/tuple/group_deps*
T0*G
_class=
;9loc:@atrain/gradients/loss/surrogate/truediv_grad/Reshape*'
_output_shapes
:���������
�
Gatrain/gradients/loss/surrogate/truediv_grad/tuple/control_dependency_1Identity6atrain/gradients/loss/surrogate/truediv_grad/Reshape_1>^atrain/gradients/loss/surrogate/truediv_grad/tuple/group_deps*
T0*I
_class?
=;loc:@atrain/gradients/loss/surrogate/truediv_grad/Reshape_1*'
_output_shapes
:���������
�
,atrain/gradients/pi/Normal/prob/Exp_grad/mulMulEatrain/gradients/loss/surrogate/truediv_grad/tuple/control_dependencypi/Normal/prob/Exp*
T0*'
_output_shapes
:���������
�
.atrain/gradients/pi/Normal/prob/sub_grad/ShapeShapepi/Normal/prob/mul*
T0*
out_type0*
_output_shapes
:
�
0atrain/gradients/pi/Normal/prob/sub_grad/Shape_1Shapepi/Normal/prob/add*
_output_shapes
:*
T0*
out_type0
�
>atrain/gradients/pi/Normal/prob/sub_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/pi/Normal/prob/sub_grad/Shape0atrain/gradients/pi/Normal/prob/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
,atrain/gradients/pi/Normal/prob/sub_grad/SumSum,atrain/gradients/pi/Normal/prob/Exp_grad/mul>atrain/gradients/pi/Normal/prob/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
0atrain/gradients/pi/Normal/prob/sub_grad/ReshapeReshape,atrain/gradients/pi/Normal/prob/sub_grad/Sum.atrain/gradients/pi/Normal/prob/sub_grad/Shape*'
_output_shapes
:���������*
T0*
Tshape0
�
.atrain/gradients/pi/Normal/prob/sub_grad/Sum_1Sum,atrain/gradients/pi/Normal/prob/Exp_grad/mul@atrain/gradients/pi/Normal/prob/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
,atrain/gradients/pi/Normal/prob/sub_grad/NegNeg.atrain/gradients/pi/Normal/prob/sub_grad/Sum_1*
T0*
_output_shapes
:
�
2atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1Reshape,atrain/gradients/pi/Normal/prob/sub_grad/Neg0atrain/gradients/pi/Normal/prob/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
9atrain/gradients/pi/Normal/prob/sub_grad/tuple/group_depsNoOp1^atrain/gradients/pi/Normal/prob/sub_grad/Reshape3^atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1
�
Aatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependencyIdentity0atrain/gradients/pi/Normal/prob/sub_grad/Reshape:^atrain/gradients/pi/Normal/prob/sub_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/pi/Normal/prob/sub_grad/Reshape*'
_output_shapes
:���������
�
Catrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1:^atrain/gradients/pi/Normal/prob/sub_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*E
_class;
97loc:@atrain/gradients/pi/Normal/prob/sub_grad/Reshape_1
q
.atrain/gradients/pi/Normal/prob/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
�
0atrain/gradients/pi/Normal/prob/mul_grad/Shape_1Shapepi/Normal/prob/Square*
out_type0*
_output_shapes
:*
T0
�
>atrain/gradients/pi/Normal/prob/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/pi/Normal/prob/mul_grad/Shape0atrain/gradients/pi/Normal/prob/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
,atrain/gradients/pi/Normal/prob/mul_grad/MulMulAatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependencypi/Normal/prob/Square*'
_output_shapes
:���������*
T0
�
,atrain/gradients/pi/Normal/prob/mul_grad/SumSum,atrain/gradients/pi/Normal/prob/mul_grad/Mul>atrain/gradients/pi/Normal/prob/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
0atrain/gradients/pi/Normal/prob/mul_grad/ReshapeReshape,atrain/gradients/pi/Normal/prob/mul_grad/Sum.atrain/gradients/pi/Normal/prob/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
.atrain/gradients/pi/Normal/prob/mul_grad/Mul_1Mulpi/Normal/prob/mul/xAatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency*'
_output_shapes
:���������*
T0
�
.atrain/gradients/pi/Normal/prob/mul_grad/Sum_1Sum.atrain/gradients/pi/Normal/prob/mul_grad/Mul_1@atrain/gradients/pi/Normal/prob/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
2atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1Reshape.atrain/gradients/pi/Normal/prob/mul_grad/Sum_10atrain/gradients/pi/Normal/prob/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
9atrain/gradients/pi/Normal/prob/mul_grad/tuple/group_depsNoOp1^atrain/gradients/pi/Normal/prob/mul_grad/Reshape3^atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1
�
Aatrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependencyIdentity0atrain/gradients/pi/Normal/prob/mul_grad/Reshape:^atrain/gradients/pi/Normal/prob/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*C
_class9
75loc:@atrain/gradients/pi/Normal/prob/mul_grad/Reshape
�
Catrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1:^atrain/gradients/pi/Normal/prob/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@atrain/gradients/pi/Normal/prob/mul_grad/Reshape_1*'
_output_shapes
:���������
q
.atrain/gradients/pi/Normal/prob/add_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
�
0atrain/gradients/pi/Normal/prob/add_grad/Shape_1Shapepi/Normal/prob/Log*
T0*
out_type0*
_output_shapes
:
�
>atrain/gradients/pi/Normal/prob/add_grad/BroadcastGradientArgsBroadcastGradientArgs.atrain/gradients/pi/Normal/prob/add_grad/Shape0atrain/gradients/pi/Normal/prob/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
,atrain/gradients/pi/Normal/prob/add_grad/SumSumCatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency_1>atrain/gradients/pi/Normal/prob/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
0atrain/gradients/pi/Normal/prob/add_grad/ReshapeReshape,atrain/gradients/pi/Normal/prob/add_grad/Sum.atrain/gradients/pi/Normal/prob/add_grad/Shape*
_output_shapes
: *
T0*
Tshape0
�
.atrain/gradients/pi/Normal/prob/add_grad/Sum_1SumCatrain/gradients/pi/Normal/prob/sub_grad/tuple/control_dependency_1@atrain/gradients/pi/Normal/prob/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
2atrain/gradients/pi/Normal/prob/add_grad/Reshape_1Reshape.atrain/gradients/pi/Normal/prob/add_grad/Sum_10atrain/gradients/pi/Normal/prob/add_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
9atrain/gradients/pi/Normal/prob/add_grad/tuple/group_depsNoOp1^atrain/gradients/pi/Normal/prob/add_grad/Reshape3^atrain/gradients/pi/Normal/prob/add_grad/Reshape_1
�
Aatrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependencyIdentity0atrain/gradients/pi/Normal/prob/add_grad/Reshape:^atrain/gradients/pi/Normal/prob/add_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/pi/Normal/prob/add_grad/Reshape*
_output_shapes
: 
�
Catrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/Normal/prob/add_grad/Reshape_1:^atrain/gradients/pi/Normal/prob/add_grad/tuple/group_deps*
T0*E
_class;
97loc:@atrain/gradients/pi/Normal/prob/add_grad/Reshape_1*'
_output_shapes
:���������
�
1atrain/gradients/pi/Normal/prob/Square_grad/ConstConstD^atrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
/atrain/gradients/pi/Normal/prob/Square_grad/MulMul"pi/Normal/prob/standardize/truediv1atrain/gradients/pi/Normal/prob/Square_grad/Const*
T0*'
_output_shapes
:���������
�
1atrain/gradients/pi/Normal/prob/Square_grad/Mul_1MulCatrain/gradients/pi/Normal/prob/mul_grad/tuple/control_dependency_1/atrain/gradients/pi/Normal/prob/Square_grad/Mul*
T0*'
_output_shapes
:���������
�
3atrain/gradients/pi/Normal/prob/Log_grad/Reciprocal
Reciprocalpi/Normal/scaleD^atrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������
�
,atrain/gradients/pi/Normal/prob/Log_grad/mulMulCatrain/gradients/pi/Normal/prob/add_grad/tuple/control_dependency_13atrain/gradients/pi/Normal/prob/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������
�
>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ShapeShapepi/Normal/prob/standardize/sub*
T0*
out_type0*
_output_shapes
:
�
@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape_1Shapepi/Normal/scale*
T0*
out_type0*
_output_shapes
:
�
Natrain/gradients/pi/Normal/prob/standardize/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDivRealDiv1atrain/gradients/pi/Normal/prob/Square_grad/Mul_1pi/Normal/scale*'
_output_shapes
:���������*
T0
�
<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/SumSum@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDivNatrain/gradients/pi/Normal/prob/standardize/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ReshapeReshape<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Sum>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/NegNegpi/Normal/prob/standardize/sub*'
_output_shapes
:���������*
T0
�
Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_1RealDiv<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Negpi/Normal/scale*
T0*'
_output_shapes
:���������
�
Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_2RealDivBatrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_1pi/Normal/scale*
T0*'
_output_shapes
:���������
�
<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/mulMul1atrain/gradients/pi/Normal/prob/Square_grad/Mul_1Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/RealDiv_2*'
_output_shapes
:���������*
T0
�
>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Sum_1Sum<atrain/gradients/pi/Normal/prob/standardize/truediv_grad/mulPatrain/gradients/pi/Normal/prob/standardize/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Batrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1Reshape>atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Sum_1@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
Iatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/group_depsNoOpA^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ReshapeC^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1
�
Qatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependencyIdentity@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/ReshapeJ^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*S
_classI
GEloc:@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape
�
Satrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependency_1IdentityBatrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1J^atrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*U
_classK
IGloc:@atrain/gradients/pi/Normal/prob/standardize/truediv_grad/Reshape_1
�
:atrain/gradients/pi/Normal/prob/standardize/sub_grad/ShapeShapeaction*
out_type0*
_output_shapes
:*
T0
�
<atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape_1Shapepi/Normal/loc*
_output_shapes
:*
T0*
out_type0
�
Jatrain/gradients/pi/Normal/prob/standardize/sub_grad/BroadcastGradientArgsBroadcastGradientArgs:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape<atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
8atrain/gradients/pi/Normal/prob/standardize/sub_grad/SumSumQatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependencyJatrain/gradients/pi/Normal/prob/standardize/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
<atrain/gradients/pi/Normal/prob/standardize/sub_grad/ReshapeReshape8atrain/gradients/pi/Normal/prob/standardize/sub_grad/Sum:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Sum_1SumQatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependencyLatrain/gradients/pi/Normal/prob/standardize/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
8atrain/gradients/pi/Normal/prob/standardize/sub_grad/NegNeg:atrain/gradients/pi/Normal/prob/standardize/sub_grad/Sum_1*
T0*
_output_shapes
:
�
>atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1Reshape8atrain/gradients/pi/Normal/prob/standardize/sub_grad/Neg<atrain/gradients/pi/Normal/prob/standardize/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
Eatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/group_depsNoOp=^atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape?^atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1
�
Matrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependencyIdentity<atrain/gradients/pi/Normal/prob/standardize/sub_grad/ReshapeF^atrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/group_deps*
T0*O
_classE
CAloc:@atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape*'
_output_shapes
:���������
�
Oatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependency_1Identity>atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1F^atrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@atrain/gradients/pi/Normal/prob/standardize/sub_grad/Reshape_1*'
_output_shapes
:���������
�
atrain/gradients/AddN_1AddN,atrain/gradients/pi/Normal/prob/Log_grad/mulSatrain/gradients/pi/Normal/prob/standardize/truediv_grad/tuple/control_dependency_1*
T0*?
_class5
31loc:@atrain/gradients/pi/Normal/prob/Log_grad/mul*
N*'
_output_shapes
:���������
�
6atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGradSoftplusGradatrain/gradients/AddN_1pi/dense_2/BiasAdd*'
_output_shapes
:���������*
T0
e
"atrain/gradients/pi/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
s
$atrain/gradients/pi/mul_grad/Shape_1Shapepi/dense_1/Tanh*
T0*
out_type0*
_output_shapes
:
�
2atrain/gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"atrain/gradients/pi/mul_grad/Shape$atrain/gradients/pi/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
 atrain/gradients/pi/mul_grad/MulMulOatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependency_1pi/dense_1/Tanh*'
_output_shapes
:���������*
T0
�
 atrain/gradients/pi/mul_grad/SumSum atrain/gradients/pi/mul_grad/Mul2atrain/gradients/pi/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
$atrain/gradients/pi/mul_grad/ReshapeReshape atrain/gradients/pi/mul_grad/Sum"atrain/gradients/pi/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
"atrain/gradients/pi/mul_grad/Mul_1Mulpi/mul/xOatrain/gradients/pi/Normal/prob/standardize/sub_grad/tuple/control_dependency_1*'
_output_shapes
:���������*
T0
�
"atrain/gradients/pi/mul_grad/Sum_1Sum"atrain/gradients/pi/mul_grad/Mul_14atrain/gradients/pi/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
&atrain/gradients/pi/mul_grad/Reshape_1Reshape"atrain/gradients/pi/mul_grad/Sum_1$atrain/gradients/pi/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
-atrain/gradients/pi/mul_grad/tuple/group_depsNoOp%^atrain/gradients/pi/mul_grad/Reshape'^atrain/gradients/pi/mul_grad/Reshape_1
�
5atrain/gradients/pi/mul_grad/tuple/control_dependencyIdentity$atrain/gradients/pi/mul_grad/Reshape.^atrain/gradients/pi/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@atrain/gradients/pi/mul_grad/Reshape*
_output_shapes
: 
�
7atrain/gradients/pi/mul_grad/tuple/control_dependency_1Identity&atrain/gradients/pi/mul_grad/Reshape_1.^atrain/gradients/pi/mul_grad/tuple/group_deps*9
_class/
-+loc:@atrain/gradients/pi/mul_grad/Reshape_1*'
_output_shapes
:���������*
T0
�
4atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad6atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
9atrain/gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp5^atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad7^atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad
�
Aatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity6atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad:^atrain/gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@atrain/gradients/pi/dense_2/Softplus_grad/SoftplusGrad*'
_output_shapes
:���������
�
Catrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity4atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad:^atrain/gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@atrain/gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
.atrain/gradients/pi/dense_1/Tanh_grad/TanhGradTanhGradpi/dense_1/Tanh7atrain/gradients/pi/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������
�
.atrain/gradients/pi/dense_2/MatMul_grad/MatMulMatMulAatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencypi/dense_2/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(
�
0atrain/gradients/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense/ReluAatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:d*
transpose_a(*
transpose_b( *
T0
�
8atrain/gradients/pi/dense_2/MatMul_grad/tuple/group_depsNoOp/^atrain/gradients/pi/dense_2/MatMul_grad/MatMul1^atrain/gradients/pi/dense_2/MatMul_grad/MatMul_1
�
@atrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity.atrain/gradients/pi/dense_2/MatMul_grad/MatMul9^atrain/gradients/pi/dense_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*A
_class7
53loc:@atrain/gradients/pi/dense_2/MatMul_grad/MatMul
�
Batrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity0atrain/gradients/pi/dense_2/MatMul_grad/MatMul_19^atrain/gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:d
�
4atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad.atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
9atrain/gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp5^atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad/^atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad
�
Aatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity.atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad:^atrain/gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*A
_class7
53loc:@atrain/gradients/pi/dense_1/Tanh_grad/TanhGrad
�
Catrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity4atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad:^atrain/gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*G
_class=
;9loc:@atrain/gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
.atrain/gradients/pi/dense_1/MatMul_grad/MatMulMatMulAatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
transpose_b(*
T0*'
_output_shapes
:���������d*
transpose_a( 
�
0atrain/gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/ReluAatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:d*
transpose_a(
�
8atrain/gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp/^atrain/gradients/pi/dense_1/MatMul_grad/MatMul1^atrain/gradients/pi/dense_1/MatMul_grad/MatMul_1
�
@atrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity.atrain/gradients/pi/dense_1/MatMul_grad/MatMul9^atrain/gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@atrain/gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
Batrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity0atrain/gradients/pi/dense_1/MatMul_grad/MatMul_19^atrain/gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@atrain/gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:d
�
atrain/gradients/AddN_2AddN@atrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependency@atrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependency*'
_output_shapes
:���������d*
T0*A
_class7
53loc:@atrain/gradients/pi/dense_2/MatMul_grad/MatMul*
N
�
,atrain/gradients/pi/dense/Relu_grad/ReluGradReluGradatrain/gradients/AddN_2pi/dense/Relu*
T0*'
_output_shapes
:���������d
�
2atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad,atrain/gradients/pi/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:d*
T0
�
7atrain/gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp3^atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGrad-^atrain/gradients/pi/dense/Relu_grad/ReluGrad
�
?atrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity,atrain/gradients/pi/dense/Relu_grad/ReluGrad8^atrain/gradients/pi/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*?
_class5
31loc:@atrain/gradients/pi/dense/Relu_grad/ReluGrad
�
Aatrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity2atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGrad8^atrain/gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:d*
T0*E
_class;
97loc:@atrain/gradients/pi/dense/BiasAdd_grad/BiasAddGrad
�
,atrain/gradients/pi/dense/MatMul_grad/MatMulMatMul?atrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
.atrain/gradients/pi/dense/MatMul_grad/MatMul_1MatMulstate?atrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:d*
transpose_a(*
transpose_b( 
�
6atrain/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp-^atrain/gradients/pi/dense/MatMul_grad/MatMul/^atrain/gradients/pi/dense/MatMul_grad/MatMul_1
�
>atrain/gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity,atrain/gradients/pi/dense/MatMul_grad/MatMul7^atrain/gradients/pi/dense/MatMul_grad/tuple/group_deps*?
_class5
31loc:@atrain/gradients/pi/dense/MatMul_grad/MatMul*'
_output_shapes
:���������*
T0
�
@atrain/gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity.atrain/gradients/pi/dense/MatMul_grad/MatMul_17^atrain/gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@atrain/gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes

:d
�
 atrain/beta1_power/initial_valueConst* 
_class
loc:@pi/dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
atrain/beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name * 
_class
loc:@pi/dense/bias
�
atrain/beta1_power/AssignAssignatrain/beta1_power atrain/beta1_power/initial_value*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
z
atrain/beta1_power/readIdentityatrain/beta1_power*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
�
 atrain/beta2_power/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
valueB
 *w�?
�
atrain/beta2_power
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
atrain/beta2_power/AssignAssignatrain/beta2_power atrain/beta2_power/initial_value*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
z
atrain/beta2_power/readIdentityatrain/beta2_power* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
T0
�
-atrain/pi/dense/kernel/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense/kernel/Adam
VariableV2*
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *"
_class
loc:@pi/dense/kernel*
	container 
�
"atrain/pi/dense/kernel/Adam/AssignAssignatrain/pi/dense/kernel/Adam-atrain/pi/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:d
�
 atrain/pi/dense/kernel/Adam/readIdentityatrain/pi/dense/kernel/Adam*
_output_shapes

:d*
T0*"
_class
loc:@pi/dense/kernel
�
/atrain/pi/dense/kernel/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
:d
�
$atrain/pi/dense/kernel/Adam_1/AssignAssignatrain/pi/dense/kernel/Adam_1/atrain/pi/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:d*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
�
"atrain/pi/dense/kernel/Adam_1/readIdentityatrain/pi/dense/kernel/Adam_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:d
�
+atrain/pi/dense/bias/Adam/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
atrain/pi/dense/bias/Adam
VariableV2* 
_class
loc:@pi/dense/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name 
�
 atrain/pi/dense/bias/Adam/AssignAssignatrain/pi/dense/bias/Adam+atrain/pi/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:d
�
atrain/pi/dense/bias/Adam/readIdentityatrain/pi/dense/bias/Adam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:d
�
-atrain/pi/dense/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
atrain/pi/dense/bias/Adam_1
VariableV2* 
_class
loc:@pi/dense/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name 
�
"atrain/pi/dense/bias/Adam_1/AssignAssignatrain/pi/dense/bias/Adam_1-atrain/pi/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:d
�
 atrain/pi/dense/bias/Adam_1/readIdentityatrain/pi/dense/bias/Adam_1*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:d
�
/atrain/pi/dense_1/kernel/Adam/Initializer/zerosConst*$
_class
loc:@pi/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense_1/kernel/Adam
VariableV2*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name 
�
$atrain/pi/dense_1/kernel/Adam/AssignAssignatrain/pi/dense_1/kernel/Adam/atrain/pi/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
"atrain/pi/dense_1/kernel/Adam/readIdentityatrain/pi/dense_1/kernel/Adam*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:d*
T0
�
1atrain/pi/dense_1/kernel/Adam_1/Initializer/zerosConst*$
_class
loc:@pi/dense_1/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense_1/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:d
�
&atrain/pi/dense_1/kernel/Adam_1/AssignAssignatrain/pi/dense_1/kernel/Adam_11atrain/pi/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:d
�
$atrain/pi/dense_1/kernel/Adam_1/readIdentityatrain/pi/dense_1/kernel/Adam_1*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:d
�
-atrain/pi/dense_1/bias/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
atrain/pi/dense_1/bias/Adam
VariableV2*"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
"atrain/pi/dense_1/bias/Adam/AssignAssignatrain/pi/dense_1/bias/Adam-atrain/pi/dense_1/bias/Adam/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
 atrain/pi/dense_1/bias/Adam/readIdentityatrain/pi/dense_1/bias/Adam*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_1/bias
�
/atrain/pi/dense_1/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0
�
atrain/pi/dense_1/bias/Adam_1
VariableV2*"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
$atrain/pi/dense_1/bias/Adam_1/AssignAssignatrain/pi/dense_1/bias/Adam_1/atrain/pi/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
�
"atrain/pi/dense_1/bias/Adam_1/readIdentityatrain/pi/dense_1/bias/Adam_1*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:
�
/atrain/pi/dense_2/kernel/Adam/Initializer/zerosConst*$
_class
loc:@pi/dense_2/kernel*
valueBd*    *
dtype0*
_output_shapes

:d
�
atrain/pi/dense_2/kernel/Adam
VariableV2*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
$atrain/pi/dense_2/kernel/Adam/AssignAssignatrain/pi/dense_2/kernel/Adam/atrain/pi/dense_2/kernel/Adam/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0
�
"atrain/pi/dense_2/kernel/Adam/readIdentityatrain/pi/dense_2/kernel/Adam*
_output_shapes

:d*
T0*$
_class
loc:@pi/dense_2/kernel
�
1atrain/pi/dense_2/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:d*$
_class
loc:@pi/dense_2/kernel*
valueBd*    
�
atrain/pi/dense_2/kernel/Adam_1
VariableV2*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
&atrain/pi/dense_2/kernel/Adam_1/AssignAssignatrain/pi/dense_2/kernel/Adam_11atrain/pi/dense_2/kernel/Adam_1/Initializer/zeros*
_output_shapes

:d*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
�
$atrain/pi/dense_2/kernel/Adam_1/readIdentityatrain/pi/dense_2/kernel/Adam_1*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:d
�
-atrain/pi/dense_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0
�
atrain/pi/dense_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:
�
"atrain/pi/dense_2/bias/Adam/AssignAssignatrain/pi/dense_2/bias/Adam-atrain/pi/dense_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
�
 atrain/pi/dense_2/bias/Adam/readIdentityatrain/pi/dense_2/bias/Adam*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
�
/atrain/pi/dense_2/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
atrain/pi/dense_2/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container 
�
$atrain/pi/dense_2/bias/Adam_1/AssignAssignatrain/pi/dense_2/bias/Adam_1/atrain/pi/dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
�
"atrain/pi/dense_2/bias/Adam_1/readIdentityatrain/pi/dense_2/bias/Adam_1*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
^
atrain/Adam/learning_rateConst*
valueB
 *��8*
dtype0*
_output_shapes
: 
V
atrain/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
V
atrain/Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
X
atrain/Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
,atrain/Adam/update_pi/dense/kernel/ApplyAdam	ApplyAdampi/dense/kernelatrain/pi/dense/kernel/Adamatrain/pi/dense/kernel/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilon@atrain/gradients/pi/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
use_nesterov( *
_output_shapes

:d
�
*atrain/Adam/update_pi/dense/bias/ApplyAdam	ApplyAdampi/dense/biasatrain/pi/dense/bias/Adamatrain/pi/dense/bias/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonAatrain/gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
_output_shapes
:d
�
.atrain/Adam/update_pi/dense_1/kernel/ApplyAdam	ApplyAdampi/dense_1/kernelatrain/pi/dense_1/kernel/Adamatrain/pi/dense_1/kernel/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonBatrain/gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( *
_output_shapes

:d
�
,atrain/Adam/update_pi/dense_1/bias/ApplyAdam	ApplyAdampi/dense_1/biasatrain/pi/dense_1/bias/Adamatrain/pi/dense_1/bias/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonCatrain/gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias
�
.atrain/Adam/update_pi/dense_2/kernel/ApplyAdam	ApplyAdampi/dense_2/kernelatrain/pi/dense_2/kernel/Adamatrain/pi/dense_2/kernel/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonBatrain/gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:d*
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel
�
,atrain/Adam/update_pi/dense_2/bias/ApplyAdam	ApplyAdampi/dense_2/biasatrain/pi/dense_2/bias/Adamatrain/pi/dense_2/bias/Adam_1atrain/beta1_power/readatrain/beta2_power/readatrain/Adam/learning_rateatrain/Adam/beta1atrain/Adam/beta2atrain/Adam/epsilonCatrain/gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@pi/dense_2/bias*
use_nesterov( *
_output_shapes
:
�
atrain/Adam/mulMulatrain/beta1_power/readatrain/Adam/beta1+^atrain/Adam/update_pi/dense/bias/ApplyAdam-^atrain/Adam/update_pi/dense/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_1/bias/ApplyAdam/^atrain/Adam/update_pi/dense_1/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_2/bias/ApplyAdam/^atrain/Adam/update_pi/dense_2/kernel/ApplyAdam*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
�
atrain/Adam/AssignAssignatrain/beta1_poweratrain/Adam/mul*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
atrain/Adam/mul_1Mulatrain/beta2_power/readatrain/Adam/beta2+^atrain/Adam/update_pi/dense/bias/ApplyAdam-^atrain/Adam/update_pi/dense/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_1/bias/ApplyAdam/^atrain/Adam/update_pi/dense_1/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_2/bias/ApplyAdam/^atrain/Adam/update_pi/dense_2/kernel/ApplyAdam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
atrain/Adam/Assign_1Assignatrain/beta2_poweratrain/Adam/mul_1*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
�
atrain/AdamNoOp^atrain/Adam/Assign^atrain/Adam/Assign_1+^atrain/Adam/update_pi/dense/bias/ApplyAdam-^atrain/Adam/update_pi/dense/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_1/bias/ApplyAdam/^atrain/Adam/update_pi/dense_1/kernel/ApplyAdam-^atrain/Adam/update_pi/dense_2/bias/ApplyAdam/^atrain/Adam/update_pi/dense_2/kernel/ApplyAdam""�,
	variables�,�,
�
critic/dense/kernel:0critic/dense/kernel/Assigncritic/dense/kernel/read:020critic/dense/kernel/Initializer/random_uniform:08
r
critic/dense/bias:0critic/dense/bias/Assigncritic/dense/bias/read:02%critic/dense/bias/Initializer/zeros:08
�
critic/dense_1/kernel:0critic/dense_1/kernel/Assigncritic/dense_1/kernel/read:022critic/dense_1/kernel/Initializer/random_uniform:08
z
critic/dense_1/bias:0critic/dense_1/bias/Assigncritic/dense_1/bias/read:02'critic/dense_1/bias/Initializer/zeros:08
p
critic/beta1_power:0critic/beta1_power/Assigncritic/beta1_power/read:02"critic/beta1_power/initial_value:0
p
critic/beta2_power:0critic/beta2_power/Assigncritic/beta2_power/read:02"critic/beta2_power/initial_value:0
�
!critic/critic/dense/kernel/Adam:0&critic/critic/dense/kernel/Adam/Assign&critic/critic/dense/kernel/Adam/read:023critic/critic/dense/kernel/Adam/Initializer/zeros:0
�
#critic/critic/dense/kernel/Adam_1:0(critic/critic/dense/kernel/Adam_1/Assign(critic/critic/dense/kernel/Adam_1/read:025critic/critic/dense/kernel/Adam_1/Initializer/zeros:0
�
critic/critic/dense/bias/Adam:0$critic/critic/dense/bias/Adam/Assign$critic/critic/dense/bias/Adam/read:021critic/critic/dense/bias/Adam/Initializer/zeros:0
�
!critic/critic/dense/bias/Adam_1:0&critic/critic/dense/bias/Adam_1/Assign&critic/critic/dense/bias/Adam_1/read:023critic/critic/dense/bias/Adam_1/Initializer/zeros:0
�
#critic/critic/dense_1/kernel/Adam:0(critic/critic/dense_1/kernel/Adam/Assign(critic/critic/dense_1/kernel/Adam/read:025critic/critic/dense_1/kernel/Adam/Initializer/zeros:0
�
%critic/critic/dense_1/kernel/Adam_1:0*critic/critic/dense_1/kernel/Adam_1/Assign*critic/critic/dense_1/kernel/Adam_1/read:027critic/critic/dense_1/kernel/Adam_1/Initializer/zeros:0
�
!critic/critic/dense_1/bias/Adam:0&critic/critic/dense_1/bias/Adam/Assign&critic/critic/dense_1/bias/Adam/read:023critic/critic/dense_1/bias/Adam/Initializer/zeros:0
�
#critic/critic/dense_1/bias/Adam_1:0(critic/critic/dense_1/bias/Adam_1/Assign(critic/critic/dense_1/bias/Adam_1/read:025critic/critic/dense_1/bias/Adam_1/Initializer/zeros:0
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
}
oldpi/dense/kernel:0oldpi/dense/kernel/Assignoldpi/dense/kernel/read:02/oldpi/dense/kernel/Initializer/random_uniform:0
l
oldpi/dense/bias:0oldpi/dense/bias/Assignoldpi/dense/bias/read:02$oldpi/dense/bias/Initializer/zeros:0
�
oldpi/dense_1/kernel:0oldpi/dense_1/kernel/Assignoldpi/dense_1/kernel/read:021oldpi/dense_1/kernel/Initializer/random_uniform:0
t
oldpi/dense_1/bias:0oldpi/dense_1/bias/Assignoldpi/dense_1/bias/read:02&oldpi/dense_1/bias/Initializer/zeros:0
�
oldpi/dense_2/kernel:0oldpi/dense_2/kernel/Assignoldpi/dense_2/kernel/read:021oldpi/dense_2/kernel/Initializer/random_uniform:0
t
oldpi/dense_2/bias:0oldpi/dense_2/bias/Assignoldpi/dense_2/bias/read:02&oldpi/dense_2/bias/Initializer/zeros:0
p
atrain/beta1_power:0atrain/beta1_power/Assignatrain/beta1_power/read:02"atrain/beta1_power/initial_value:0
p
atrain/beta2_power:0atrain/beta2_power/Assignatrain/beta2_power/read:02"atrain/beta2_power/initial_value:0
�
atrain/pi/dense/kernel/Adam:0"atrain/pi/dense/kernel/Adam/Assign"atrain/pi/dense/kernel/Adam/read:02/atrain/pi/dense/kernel/Adam/Initializer/zeros:0
�
atrain/pi/dense/kernel/Adam_1:0$atrain/pi/dense/kernel/Adam_1/Assign$atrain/pi/dense/kernel/Adam_1/read:021atrain/pi/dense/kernel/Adam_1/Initializer/zeros:0
�
atrain/pi/dense/bias/Adam:0 atrain/pi/dense/bias/Adam/Assign atrain/pi/dense/bias/Adam/read:02-atrain/pi/dense/bias/Adam/Initializer/zeros:0
�
atrain/pi/dense/bias/Adam_1:0"atrain/pi/dense/bias/Adam_1/Assign"atrain/pi/dense/bias/Adam_1/read:02/atrain/pi/dense/bias/Adam_1/Initializer/zeros:0
�
atrain/pi/dense_1/kernel/Adam:0$atrain/pi/dense_1/kernel/Adam/Assign$atrain/pi/dense_1/kernel/Adam/read:021atrain/pi/dense_1/kernel/Adam/Initializer/zeros:0
�
!atrain/pi/dense_1/kernel/Adam_1:0&atrain/pi/dense_1/kernel/Adam_1/Assign&atrain/pi/dense_1/kernel/Adam_1/read:023atrain/pi/dense_1/kernel/Adam_1/Initializer/zeros:0
�
atrain/pi/dense_1/bias/Adam:0"atrain/pi/dense_1/bias/Adam/Assign"atrain/pi/dense_1/bias/Adam/read:02/atrain/pi/dense_1/bias/Adam/Initializer/zeros:0
�
atrain/pi/dense_1/bias/Adam_1:0$atrain/pi/dense_1/bias/Adam_1/Assign$atrain/pi/dense_1/bias/Adam_1/read:021atrain/pi/dense_1/bias/Adam_1/Initializer/zeros:0
�
atrain/pi/dense_2/kernel/Adam:0$atrain/pi/dense_2/kernel/Adam/Assign$atrain/pi/dense_2/kernel/Adam/read:021atrain/pi/dense_2/kernel/Adam/Initializer/zeros:0
�
!atrain/pi/dense_2/kernel/Adam_1:0&atrain/pi/dense_2/kernel/Adam_1/Assign&atrain/pi/dense_2/kernel/Adam_1/read:023atrain/pi/dense_2/kernel/Adam_1/Initializer/zeros:0
�
atrain/pi/dense_2/bias/Adam:0"atrain/pi/dense_2/bias/Adam/Assign"atrain/pi/dense_2/bias/Adam/read:02/atrain/pi/dense_2/bias/Adam/Initializer/zeros:0
�
atrain/pi/dense_2/bias/Adam_1:0$atrain/pi/dense_2/bias/Adam_1/Assign$atrain/pi/dense_2/bias/Adam_1/read:021atrain/pi/dense_2/bias/Adam_1/Initializer/zeros:0"�	
trainable_variables�	�	
�
critic/dense/kernel:0critic/dense/kernel/Assigncritic/dense/kernel/read:020critic/dense/kernel/Initializer/random_uniform:08
r
critic/dense/bias:0critic/dense/bias/Assigncritic/dense/bias/read:02%critic/dense/bias/Initializer/zeros:08
�
critic/dense_1/kernel:0critic/dense_1/kernel/Assigncritic/dense_1/kernel/read:022critic/dense_1/kernel/Initializer/random_uniform:08
z
critic/dense_1/bias:0critic/dense_1/bias/Assigncritic/dense_1/bias/read:02'critic/dense_1/bias/Initializer/zeros:08
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08"(
train_op

critic/Adam
atrain/Adam�B
�