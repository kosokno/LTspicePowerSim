# 🖼️ Circuit Gallery – LTspicePowerSim

This gallery presents example circuits included in **LTspicePowerSim**, all provided as editable schematic files (.asc).


## Contents
- [Control & Compensation](#control--compensation)
  - [Analog Compensation](#analog-compensation)
  - [Digital Controllers](#digital-controllers)
  - [Control Building Blocks](#control-building-blocks)
- [DC-DC Converters](#dc-dc-converters)
  - [Buck Family](#buck-family)
  - [Boost / Buck-Boost](#boost--buck-boost)
  - [TLVR](#tlvr)
- [Resonant & Isolated Converters](#resonant--isolated-converters)
  - [Basic Isolated Converters](#basic-isolated-converters)
  - [Phase-Shifted & Resonant](#phase-shifted--resonant)
  - [Bidirectional Isolated](#bidirectional-isolated)
- [Power Factor Correction (PFC)](#power-factor-correction-pfc)
  - [Single-Phase Totem-Pole](#single-phase-totem-pole)
  - [Three-Phase Totem-Pole](#three-phase-totem-pole)
- [Motor Drive & Control](#motor-drive--control)
  - [Control Building Blocks](#control-building-blocks)
  - [Stepper Motor Drives](#stepper-motor-drives)
  - [PMSM Drives](#pmsm-drives)
- [Battery & Energy Storage](#battery--energy-storage)
  - [Battery Models](#battery-models)
- [Component Usage Matrix](#component-usage-matrix)


---
## Control & Compensation

### Analog Compensation

#### Type-II Compensator (FRA)
Analog Type-II compensator for loop stability and frequency response analysis.

![LTspice schematic: Buck converter with voltage-mode control](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_VM/BUCK_VM.png
)

---

#### Type-III Compensator (FRA)
Analog Type-III compensator for loop stability and frequency response analysis.

![LTspice schematic: Type-III compensator for SMPS frequency response analysis (FRA)](
example/01_ControlAndCompensation/01_AnalogCompensation/TYPE3_FRA/TYPE3_FRA.png
)

---

### Digital Controllers

#### Discrete-Time PI Controller
Digital z-domain PI controller implemented with IIR filter.

![LTspice schematic: Discrete-time PI controller implemented in z-domain](
example/01_ControlAndCompensation/02_DigitalCompensation/zPI_FRA/zPI_FRA.png
)
---

#### Discrete-Time PID Controller
Digital z-domain PID controller implemented with IIR filter.

![LTspice schematic: Discrete-time PID controller implemented in z-domain](
example/01_ControlAndCompensation/02_DigitalCompensation/zPID_FRA/zPID_FRA.png
)

---
### Control Building Blocks
#### Charge Pump Phase-Locked Loop (PLL)
Textbook charge-pump PLL for clock and phase synchronization.

![LTspice schematic: Charge pump phase-locked loop (PLL)](
example/01_ControlAndCompensation/03_ControlBuildingBlocks/CP_PLL/CP_PLL.png
)
---
#### SOGI PLL (Second-Order Generalized Integrator PLL)
Single-phase PLL using a Second-Order Generalized Integrator to generate orthogonal signals, with d-axis zero regulation for phase locking.

![LTspice schematic: SOGI PLL (Second-Order Generalized Integrator PLL)](
example/01_ControlAndCompensation/03_ControlBuildingBlocks/SOGI_PLL/SOGI_PLL.png
)
---
#### SRF PLL (Synchronous Reference Frame PLL)
Three-phase PLL based on Clarke/Park transforms, using q-axis regulation to track grid phase and frequency.

![LTspice schematic: SRF PLL (Synchronous Reference Frame PLL)](
example/01_ControlAndCompensation/03_ControlBuildingBlocks/SRF_PLL/SRF_PLL.png
)
---


## DC-DC Converters

### Buck Family

#### Buck Converter – Voltage Mode Control (VM)
Classic buck converter using voltage-mode control.

![LTspice schematic: Buck converter with voltage-mode control](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_VM/BUCK_VM.png
)
---

#### Asynchronous Buck Converter (FRA)
Classic asynchronous buch converter using voltage-mode control.

![LTspice schematic: Asynchronous Buck converter with voltage-mode control](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_VM_ASYNC/BUCK_VM_ASYNC.png
)
---

#### Buck Converter – Voltage Mode Control (CCM Plant)
Continuous conduction mode (CCM) plant model for control analysis.

![LTspice schematic: Buck converter CCM plant model](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_VM_CCM_plant/BUCK_VM_CCM_plant.png
)
---

#### Buck Converter – Voltage Mode Control (DCM Plant)
Discontinuous conduction mode (DCM) plant model for control analysis.

![LTspice schematic: Buck converter DCM plant model](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_VM_DCM_plant/BUCK_VM_DCM_plant.png
)
---

#### Buck Converter – Peak Current Mode Control (PCM)
Peak current mode controlled buck converter.

![LTspice schematic: Peak current mode buck converter](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_PCM/BUCK_PCM.png
)
---

#### Four-Phase Buck Converter – PCM
Interleaved four-phase buck converter with peak current mode control.

![LTspice schematic: Four-phase interleaved buck converter with PCM control](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_PCM_4ph/BUCK_PCM_4ph.png
)
---

#### Buck Converter – Constant On-Time Control (COT)
Adaptive constant on-time buck converter for fast transient response evaluation.

![LTspice schematic: Buck converter with adaptive constant on-time control](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_COT_ADP/BUCK_COT_ADP.png
)
---

#### Three-Level Buck Converter
Multi-level buck converter topology for reduced switching stress.

![LTspice schematic: Three-level buck converter topology](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_3LV/BUCK_3LV.png
)
---

#### Buck Converter – Voltage Mode (Discrete-Time Control)
Buck converter with discrete-time digital voltage-mode control.

![LTspice schematic: Discrete-time voltage-mode buck converter](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_VM_discrete/BUCK_VM_discrete.png
)
---

#### Buck Converter – Peak Current Mode (Discrete-Time Control)
Buck converter with discrete-time peak current mode control.

![LTspice schematic: Discrete-time peak current mode buck converter](
example/02_DC_DC_Converters/01_BuckFamily/BUCK_PCM_discrete/BUCK_PCM_discrete.png
)
---

### Boost / Buck-Boost

#### Boost Converter – Voltage Mode Control
Voltage-mode controlled boost converter.

![LTspice schematic: Boost converter with voltage-mode control](
example/02_DC_DC_Converters/02_Boost_BuckBoost/BOOST_VM/BOOST_VM.png
)
---

#### Boost Converter – Peak Current Mode Control
Peak current mode controlled boost converter.

![LTspice schematic: Peak current mode boost converter](
example/02_DC_DC_Converters/02_Boost_BuckBoost/BOOST_PCM/BOOST_PCM.png
)
---

#### Buck-Boost Converter
Buck-boost converter topology supporting step-up and step-down operation.

![LTspice schematic: Buck-boost converter topology](
example/02_DC_DC_Converters/02_Boost_BuckBoost/BUCK_BOOST_VM/BUCK-BOOST_VM.png
)
---

#### SEPIC Converter – Peak Current Mode Control
SEPIC converter with peak current mode control.

![LTspice schematic: SEPIC converter with peak current mode control](
example/02_DC_DC_Converters/02_Boost_BuckBoost/SEPIC_PCM/SEPIC_PCM.png
)
---

### TLVR

#### TLVR Four-Phase Buck (Power Stage Model) with Fixed Ton
Four-phase TLVR buck power stage using simple fixed-Ton pulse injection.

![LTspice schematic:TLVR Four-Phase Buck (Power Stage Model) with Fixed Ton](
example/02_DC_DC_Converters/03_TLVR/TLVR_4phBUCK_powerstage/TLVR_4phBUCK_powerstage.png
)
---


## Resonant & Isolated Converters

### Basic Isolated Converters

#### Flyback Converter – Boundary Conduction Mode
Boundary conduction mode flyback converter for isolated power supplies.

![LTspice schematic: Boundary conduction mode flyback converter](
example/03_ResonantAndIsolatedConverters/00_IsolatedBasics/FLYBACK/FLYBACK.png
)
---


### Phase-Shifted & Resonant

#### Phase-Shift Full-Bridge Converter (PSFB)
Phase-shift controlled full-bridge DC-DC converter.

![LTspice schematic: Phase-shift full-bridge DC-DC converter (PSFB)](
example/03_ResonantAndIsolatedConverters/01_PhaseShiftedAndResonant/PSFB2/PSFB2.png
)
---

#### LLC Resonant Converter
LLC resonant converter for resonant tank and soft-switching analysis.

![LTspice schematic: LLC resonant converter](
example/03_ResonantAndIsolatedConverters/01_PhaseShiftedAndResonant/LLC/LLC.png
)
---

### Bidirectional Isolated

#### Dual Active Bridge (DAB) Converter – Open Loop
Open loop DAB converter for bidirectional power transfer.

![LTspice schematic: Dual active bridge converter (open loop)](
example/03_ResonantAndIsolatedConverters/02_BidirectionalIsolated/DAB_Openloop/DAB_Openloop.png
)
---

#### CLLC Resonant Converter – Open Loop
Open loop CLLC resonant converter for high-efficiency bidirectional power transfer.

![LTspice schematic: Bidirectional CLLC resonant converter (open loop)](
example/03_ResonantAndIsolatedConverters/02_BidirectionalIsolated/CLLC_Openloop/CLLC_Openloop.png
)
---

## Power Factor Correction (PFC)

### Single-Phase Totem-Pole

#### Single-Phase Totem-Pole Bridgeless PFC
Single-phase totem-pole PFC topology.

![LTspice schematic: Single-phase totem-pole bridgeless PFC](
example/04_PowerFactorCorrection/01_SinglePhaseTotemPole/1ph-TTP-PFC/1Ph-TTP-PFC.png
)
---

#### Single-Phase Totem-Pole PFC with Two-Phase Interleaving
Interleaved totem-pole PFC for reduced input current ripple.

![LTspice schematic: Interleaved single-phase totem-pole PFC](
example/04_PowerFactorCorrection/01_SinglePhaseTotemPole/1Ph-TTP-PFC_2ITLV/1Ph-TTP-PFC_2ITLV.png
)
---

#### Single-Phase Four-Level Totem-Pole PFC
Four-level totem-pole PFC for reduced switching losses.

![LTspice schematic: Four-level single-phase totem-pole PFC](
example/04_PowerFactorCorrection/01_SinglePhaseTotemPole/1Ph-4LvTTP-PFC/1Ph-4LvTTP-PFC.png
)
---

### Three-Phase Totem-Pole

#### Three-Phase Totem-Pole PFC – Table-Based DPC
Three-phase totem-pole PFC using table-based direct power control.

![LTspice schematic: Three-phase totem-pole PFC with table-based DPC](
example/04_PowerFactorCorrection/02_ThreePhaseTotemPole/3Ph-TTP-PFC_TB-DPC/3Ph-TTP-PFC_TB-DPC.png
)
---

#### Three-Phase Totem-Pole PFC – VOC
Three-phase totem-pole PFC with voltage-oriented control.


![LTspice schematic: Three-phase totem-pole PFC with VOC](
example/04_PowerFactorCorrection/02_ThreePhaseTotemPole/3Ph-TTP-PFC_VOC/3Ph-TTP-PFC_VOC.png
)
---

#### Three-Phase Totem-Pole PFC – VOC with SVPWM
Three-phase totem-pole PFC using VOC and space-vector PWM.


![LTspice schematic: Three-phase totem-pole PFC with VOC and SVPWM](
example/04_PowerFactorCorrection/02_ThreePhaseTotemPole/3Ph-TTP-PFC_VOC_SVPWM/3Ph-TTP-PFC_VOC_SVPWM.png
)
---

## Motor Drive & Control

### Stepper Motor Drives

#### Two-Phase Stepper Motor – Full-Step Drive
Two-phase stepper motor full-step drive implementation.

![LTspice schematic: Two-phase stepper motor full-step drive](
example/05_MotorDriveAndControl/01_StepperMotorDrives/STEP2PH_FSTEP/STEP2PH_FSTEP.png
)
---

#### Two-Phase Stepper Motor – Microstepping
Microstepping control for two-phase stepper motors.

![LTspice schematic: Two-phase stepper motor microstepping control](
example/05_MotorDriveAndControl/01_StepperMotorDrives/STEP2PH_uSTEP/STEP2PH_uSTEP.png
)
---

#### Two-Phase Stepper Motor – Field-Oriented Control (FOC)
FOC-based current control for stepper motors.

![LTspice schematic: Two-phase stepper motor field-oriented control](
example/05_MotorDriveAndControl/01_StepperMotorDrives/STEP2PH_FOC/STEP2PH_FOC.png
)

---

### PMSM Drives

#### Permanent Magnet Synchronous Motor (PMSM) – FOC
Field-oriented control implementation for PMSM drives.

![LTspice schematic: PMSM drive with field-oriented control](
example/05_MotorDriveAndControl/02_PMSMDrives/PMSM_FOC/PMSM_FOC.png
)
---

## Battery & Energy Storage

### Battery Models

#### CC-CV Buck Charger
Equivalent circuit model for battery behavior and system-level simulation.

![LTspice schematic: CCCV buck converter for battery charging](
example/06_BatteryAndEnergyStorage/01_BatteryModels/BUCK_CCCV/BUCK_CCCV.png
)

---

## Component Usage Matrix

![LTspicePowerSim component usage matrix for example circuits](img/ExampleList.png)

