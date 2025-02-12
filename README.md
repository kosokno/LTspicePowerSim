# LTspicePowerSim
LTspicePowerSim is a Simulink-like power electronics simulation environment built on LTspice. It provides a library of ready-to-use circuit designs and custom tools, making power electronics simulation easier and more accessible for engineers and researchers.

## Features
- **Optimized Models for Convergence**: Includes circuit models specifically designed to enhance simulation convergence.
- **Transparent Model Definitions**: All models are defined using LTspice schematic files (.asc), allowing users to view and edit the circuits directly as needed.
- **Extensive Example Circuits**: From basic converters such as Buck and Boost to advanced circuits like resonant converters and PFC (Power Factor Correction), the repository includes a wide range of example circuits.

## Symbols
![alt text](./Symbols.png)


## Example List
![alt text](./example/ExampleList.png)

## Example Screen Shot
### Peak Current Control Buck 
![alt text](./example/BUCK_PCM.png)

### LLC Converter 
![alt text](./example/LLC.png)

### Three phase PFC
![alt text](./example/3Ph-TTP-PFC_TB-DPC.png)


## Getting Started

### Prerequisites

To use LTspicePowerSim, you need to have the following installed:

1. [LTspice](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html) – A high-performance SPICE simulation software.
2. Windows or macOS – The steps below cover installation for both operating systems.


### Model Installation (Windows)

- Copy the contents of the `sym\PowerSim` folder from this repository to:
    ```
    C:\Users\<username>\AppData\Local\LTspice\lib\sym\PowerSim
    ```
- Replace `<username>` with your username.
- Or you can use following batch files in `bat` folders.

    | File Name              | Description                                                                 |
    |------------------------|-----------------------------------------------------------------------------|
    | `install.bat`          | Copies the model files into the LTspice folder.    |
    | `clean.bat`            | Removes all copied files from the LTspice folder.                          |
    | `open_install_folder.bat` | Opens the LTspice directory where the files are installed.               |

### Model Installation (Windows)

- Copy the contents of the `sym\PowerSim` folder from this repository to:
    ```
    /Users/<username>/Library/Application　Support/LTspice/lib/
    ```
- Replace `<username>` with your username.


## Tips
- **Simulation Convergence**: In most cases, the simulation will work smoothly with the **Normal Solver**. However, if the simulation fails to converge, try switching to the **Alternate Solver**.  
  You can change the solver settings by navigating to **Tools > Settings**, then selecting the **SPICE > Engine > Solver** section in the control panel.
