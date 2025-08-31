# LTspicePowerSim
LTspicePowerSim is a Simulink-like power electronics simulation environment built on LTspice. It provides a library of ready-to-use circuit designs and custom tools, making power electronics simulation easier and more accessible for engineers and researchers.

## Features✨
- **Optimized Models for Convergence**: Includes circuit models specifically designed to enhance simulation convergence.
- **Transparent Model Definitions**: All models are defined using LTspice schematic files (.asc), allowing users to view and edit the circuits directly as needed.
- **Extensive Example Circuits**: From basic converters such as Buck and Boost to advanced circuits like resonant converters and PFC (Power Factor Correction), the repository includes a wide range of example circuits.

## Symbols🧩
![alt text](./Symbols.png)

## Example Screen Shot🖼️    
### Type2 Compensator
![alt text](./example/TYPE2_FRA.png)


### Peak Current Control Buck Converter
![alt text](./example/BUCK_PCM.png)

### Peak Current Control Boost Converter
![alt text](./example/BOOST_PCM.png)

### Boundary Mode Flyback Converter
![alt text](./example/FLYBACK.png)

### Phase Shift Full Bridge Converter 
![alt text](./example/PSFB.png)

### LLC Converter 
![alt text](./example/LLC.png)

###  2phase Interleaved Single phase input Totempole Bridgeless Boost PFC
![alt text](./example/1Ph-TTP-PFC_2ITLV.png)

### 3 phase input Totempole Bridgeless Boost PFC with Voltage Oriented Control (VOC) and SVPWM
![alt text](./example/3Ph-TTP-PFC_VOC_SVPWM.png)

### Discrete PID Compensator
![alt text](./example/zPID_FRA.png)

### Voltage mode buck with discrete control
![alt text](./example/BUCK_VM_discrete.png)

### 2phase Stepper motor, Field oriented control (FOC)
![alt text](./example/STEP2PH_FOC.png)

### Nerural Network Conrolled Voltage mode buck using [PyTorch2LTspice](https://github.com/kosokno/PyTorch2LTspice.git) (WIP)
![alt text](./example/NN_BUCK_VM.png)


<br>

>**More Examples Available!**  
>👉 [🖼️ Go To Full Gallery](./example/Gallery.md)

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
![alt text](./SearchPathSetting.png)

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
