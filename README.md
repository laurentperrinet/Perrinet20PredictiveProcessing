# From the retina to action: Predictive processing in the visual system

Visual areas are essential in transforming the raw luminous signal into a representation which efficiently conveys information about the environment. This process is constrained by various factors such as a wide variety of changes in the characteristics of the visual image but also by the necessity to be able to respond as quickly as possible to the incoming sensory stream, for instance to drive a movement of the eyes to the location of a potential danger. To achieve this, it is believed that the visual system takes advantage of the existence of a priori knowledge in the structure of visual information, such as the regularity in the shape and motion of visual objects. As such, the predictive coding coding framework offers a unified theory to explain many of the mechanisms at the different levels of the visual system and which were unveiled by decades of study in neurophysiology and psychophysics. However, we still lack a global normative approach unifying those mechanisms and we will review here some of the promising approaches which allow to explain the processing of visual information in the visual hierarchy from the time scale of coding to that of learning. In particular, we will describe how Active Inference, that is predictive coding with the ability to actively sample the visual space, can provide an unified account of visual mechanisms from the sensory information to the generation of an appropriate action. Then, we will extend this paradigm to the case where information is distributed on a topography, such as is the case for retino-topically organised visual areas. In particular, we will compare such models in light of recent neurophysiological data showing the role of travelling waves in shaping visual processing. Finally, we will propose some lines of research to understand how the previous functional models may be implemented at the neural level. In particular, we will describe models of cortical processing in terms of prototypical micro-circuits. These allow to separate the different flows of information, from feed-forward prediction error to feed-back anticipation error. Still, the particular implementation of such a circuit is not known and we will review some possible implementations using Spiking Neural Networks.

## Motivation : Role of dynamics in neural computations underlying visual processing
Vision, the capacity of making sense of the luminous environment, is a dynamic process. From its first stage, the retina, to the different areas which help in forming a representation of the visual world knowing its transformations as with the motion of a visual object but also to sensory modifications, such as with eye movements. As such, visual processing is not separable from the dynamics of the neural networks involved in vision. To make sense of such a complex system, it has been proposed that the organization of the visual system is such that it is efficient [AH neave, Barlow]. Such an ecological framework (Atick] allows to explain many aspects of visual processing.

Such principles take different forms such as redundancy reduction, maximisation of information transfer or minimization of metabolic energy. However, it is possible to link these different theories into a single framework, the Free-Energy Principle [friston, 05]. Key to this principle is the notion that, knowing the processes that generated the visual image and the internal generative model that allows its representation, predictive processes will take advantage of a priori knowledge to form an optimal representation of the image. Such an a priori knowledge is an explicit (probabilistic) representation of the structure of the world. For instance, an image composed of edges will be understood at a higher level using the a priori knowledge of the link between any individual edges to form a representation of the *contours* of visual objects. In the time domain, the knowledge of the motion of visual objects may help predict their future positions..

However, there are limits to this efficiency. First, luminous information can be noisy and ambiguous, such as in dim light conditions. Second, neural networks have limited information transfer capacities and importantly process information with a certain delay. In humans for instance, the delay for the transmission of retinal information is approx 80ms, while the minimal latency to perform a motor action is approx an additional 50 ms. While this constrains a lot the capacity of the visual system, we will take advantage of these delays to better unravel visual processes  as they unfold in time.

A correct definition of time in that processes is essential to this endeavour. For instance, as we record a neural cell in some visual areas, we may display in a raster plot the timing of the spikes that the cell emitted. The time is relative to that of the experimenter and is given thanks to an external clock. The plot is shown a posteriori, that is, after the recording of the spike trains. In contrast, a neuron has no access to a central clock but its response is controlled by the distribution of electro-chemical gradients on its membrane, and only at this present time. Such an observation is essential in understanding the principles guiding the organization of visual processes. In particular, predictive processes can be only defined in this interoceptive time, using only information at the present.

This chapter will review some dynamical predictive processing approaches for vision at different scales of analysis, from the whole system to intermediate representations and finally to neurons [marr].  First, we will apply the FEP to vision as a normative approach. Extending this principle with the capacity of actively sample sensory input, we will define Active Inference (AI) and its potential role in understanding vision, and also behaviors such as eye movements. Then, we will extend it to understand how such processes may be implemented in retinotopic maps. In particular, we will show how such a model may explain a visual illusion, the Flash-lag effect. This will then be compared with neurophysiological data and try to understand the potential role of travelling waves in shaping visual processing. Finally, we will review possible implementations of such models in Spiking Neural Networks. In particular, we will review some models of elementary micro-circuits and detail some potential rules for learning the structure of their connections in an unsupervised manner.


## active inference

## topography
### fle

figure: ME. In [Khoei 17], we
propose a model of predictive
processing in a topographic map.
A) the modild consist of a two-
layered map: an input source target
integrates information from visual sensors,
knowing the sensory delay. This map represents
both position and velocity, and we represent here
a representation for a Amano-dimensional variable.
Using this belief (as reprecinoted here by the
probabity distribution function), it is possible
to project this information to a second target
tayer that integrates information knowing a
compensation for the delay. In that particular
cosy speed is positive and thus information
of position is transported to the right.
⑧ Representation of the inferred probability
of position and velocity as a function of the
iterations of the model (time). darker colon
denotes higher probabilities. See tht for an
interpretation.

The flash-lag effect is a visual
illusion which is popular for its
generality and simplicity. In its original
form [McKay], the oben en is asked to
always fixate on a central cross in the
screen. Then a dot traverses the
screen with a constant, rectilinear
Weotaion. As it reaches the center of
the screen, another dot is briefly
flashed just below the moving dot.
While they are vertically perfectly
aligned, the flashed dot Is perceived
as dragging the moving dot. This
visual illusion saw a resurgence of
scientific interest with the motion
extrapolation model [Ninja wow].
However, other models such as differential
latency of postediation (Engleman) were
also proposed, such that it is yet
not chedar what is the neural substrate of the fee.

2a2: take from talk


The model that we used for the ALE can
be used with any image. In particular, a single
flashed dot evokes a expanding / contracting
isotropic activity while a moving dot may produce
a soliton-like wave which may traverse an odusion (Khoei]
More generally, this model may be described
as a simplification of the Navier Stokes equation of
fluid dynamics with the advection term. As such,
solutions to these equations are typically waves which
are travelling on the 'retinotopic map. A particular
feature of these maps is that these in dude an
amplification term for rectilinear motions . As
a consequence, once an object begins to be tracked,
its position is predicted in the future, such that
position and velocity are better estimated. on the
contrary, a dot which is moving on an unpredictable
tragectory is explained away by the system. This explains
some of the iron. linear, binary behaviours explained
by this model. It is of partial interest at
this point to understand if such a model
extends to dher stimuli or has any
neural correlate.

### neural correlate of apparent motion



## neural implementation

