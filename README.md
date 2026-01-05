# LTspicePowerSim
LTspicePowerSim is a Simulink-like power electronics simulation environment built on LTspice. It provides a library of reusable circuit-level models together with extensive example circuits, making power electronics simulation easier and more accessible for engineers and researchers.


  ## Features✨
  - **Optimized Models for Convergence**: Includes circuit models specifically designed to enhance simulation convergence.
  - **Transparent Model Definitions**: All models are defined using LTspice schematic files (.asc), allowing users to view and edit the circuits directly as needed.
  - **Extensive example circuits**: A wide range of example circuits covering DC-DC converters, resonant converters, Totem-Pole PFC, motor drivers, battery charger, and digitally controlled power stages.


## Symbols🧩
![LTspicePowerSim custom symbols for power electronics schematics](./example/00_Symbols/Symbols.png)

## Example Screen Shot🖼️    

### Type-II Compensator (FRA)
![LTspice schematic: Type-II compensator for DC-DC converter loop stability (FRA)](./example/01_ControlAndCompensation/01_AnalogCompensation/TYPE2_FRA/TYPE2_FRA.png)


### Peak Current Mode Buck Converter (Current-Mode Control)
![LTspice schematic: Peak current mode buck converter (PCM control)](./example/02_DC_DC_Converters/01_BuckFamily/BUCK_PCM/BUCK_PCM.png)


### Peak Current Mode Boost Converter (Current-Mode Control)
![LTspice schematic: Peak current mode boost converter (current-mode control)](./example/02_DC_DC_Converters/02_Boost_BuckBoost/BOOST_PCM/BOOST_PCM.png)


### CCCV Buck Converter for Battery Charging (CC/CV control)
![LTspice schematic: CCCV buck converter for battery charging (CC/CV control)](./example/06_BatteryAndEnergyStorage/01_BatteryModels/BUCK_CCCV/BUCK_CCCV.png)


### Boundary Counduction Mode Flyback Converter (BCM / CrCM)
![LTspice schematic: Boundary conduction mode flyback converter (BCM / CrCM)](./example/03_ResonantAndIsolatedConverters/00_IsolatedBasics/FLYBACK/FLYBACK.png)


### Phase-Shift Full-Bridge Converter (PSFB with ZVS) 
![LTspice schematic: Phase-shift full-bridge converter with ZVS (PSFB)](./example/03_ResonantAndIsolatedConverters/01_PhaseShiftedAndResonant/PSFB/PSFB.png)


### LLC Resonant Converter (Frequency Control)
![LTspice schematic: LLC resonant converter (gain curve and frequency control)](./example/03_ResonantAndIsolatedConverters/01_PhaseShiftedAndResonant/LLC/LLC.png)


###  Single-Phase Totem-Pole PFC (2-Phase Interleaved)
![LTspice schematic: Single-phase totem-pole PFC (2-phase interleaved bridgeless)](./example/04_PowerFactorCorrection/01_SinglePhaseTotemPole/1Ph-TTP-PFC_2ITLV/1Ph-TTP-PFC_2ITLV.png)


### Single-Phase 4-Level Totem-Pole PFC
![LTspice schematic: Single-phase 4-level totem-pole PFC (bridgeless topology)](./example/04_PowerFactorCorrection/01_SinglePhaseTotemPole/1Ph-4LvTTP-PFC/1Ph-4LvTTP-PFC.png)

### Three-Phase Totem-Pole PFC (VOC + SVPWM Control)
![LTspice schematic: Three-phase totem-pole PFC using VOC and SVPWM control](./example/04_PowerFactorCorrection/02_ThreePhaseTotemPole/3Ph-TTP-PFC_VOC_SVPWM/3Ph-TTP-PFC_VOC_SVPWM.png)

### Discrete-Time PID Controller (Z-Domain FRA)
![LTspice schematic: Discrete-time PID controller (z-domain FRA analysis)](./example/01_ControlAndCompensation/02_DigitalCompensation/zPID_FRA/zPID_FRA.png)

### Discrete-Time Voltage-Mode Buck Converter (Digital Control)
![LTspice schematic: Discrete-time voltage-mode buck converter (digital control)](./example/02_DC_DC_Converters/01_BuckFamily/BUCK_VM_discrete/BUCK_VM_discrete.png)

### Two-Phase Stepper Motor Control using FOC
![LTspice schematic: Two-phase stepper motor control using field-oriented control (FOC)](./example/05_MotorDriveAndControl/01_StepperMotorDrives/STEP2PH_FOC/STEP2PH_FOC.png)

### Nerural-Network Controlled Buck Converter using [pytorch2ltspice](https://github.com/kosokno/pytorch2ltspice.git)
![LTspice schematic: Neural-network-controlled buck converter (LTspice and PyTorch)](./img/NN_BUCK_VM.png)


<br>

>**More Examples Available!**  
➡️ [**Go to Full Gallery 🖼️**](./Gallery.md)

<br>

## Getting Started💡

### Prerequisites

To use LTspicePowerSim, you need to have the following installed:

1. [LTspice](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html) – A high-performance SPICE simulation software.
2. Windows or macOS – The steps below cover installation for both operating systems.


### Model Installation (Windows)

- Copy the contents of the `sym\PowerSim` folder from this repository to:
    ```
   For LTspice 24.0.12 or earler
    C:\Users\<username>\AppData\Local\LTspice\lib\sym\PowerSim
   
   For LTspice 24.1.0 and up
    C:\Users\<username>\Documents\LTspice\lib\sym\PowerSim
    ```
- Replace `<username>` with your username.
- Or you can use following batch files in `bat` folders.

    | File Name              | Description                                                                 |
    |------------------------|-----------------------------------------------------------------------------|
    | `install.bat`          | Copies the model files into the LTspice folder.    |
    | `clean.bat`            | Removes all copied files from the LTspice folder.                          |
    | `open_install_folder.bat` | Opens the LTspice directory where the files are installed.               |


    > **Note:**  
    > Updated batch files to follow 24.1.0 onwards while keeping old ones in "old(-24.0.12)" folder.

- For LTspice 24.1.0 and up you also need to set the path for the PowerSim folder to be able to open the example files correctly. Just go to **Tools** > **Setting** and add the path as shown below.
![LTspice setting: add PowerSim symbol search path](./img/SearchPathSetting.png)

### Model Installation (macOS)

- Copy the contents of the `sym\PowerSim` folder from this repository to:
    ```
    /Users/<username>/Library/Application　Support/LTspice/lib/
    ```
- Replace `<username>` with your username.


## Tips💡
- **Simulation Convergence**  
  - In most cases, simulations run stably with:  
    ```spice
    .options solver="norm"       <-- Other option: "alt"
    .options method="gear"       <-- Other option:"trap", "modtrap"
    ```  
    Try other option if simulation didn't converge.<br>
    The `.options solver` directive is available starting from **LTspice v24.1.0**. 
  - If convergence issues still occur, add:  
    ```spice
    .options debugtran
    ```  
    This helps identify which devices or nodes are causing difficulties in convergence.  
    The `.options debugtran` directive is also supported from **v24.1.0**.  
