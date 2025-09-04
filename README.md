# 8x1 MUX Notification Selector – Verilog Project

## 📌 Description
This project simulates a mobile-notification system using an 8x1 multiplexer in Verilog. Only one notification (out of 8 possible apps) is displayed at a time, based on the user-selected app.

## 🔧 Files
- "notification_mux.v": Verilog code for the 8x1 MUX.
- "testbench.v": Testbench to simulate various cases.
- "simulation_output.txt": Sample output from simulation.
- "diagram.png": (Optional) Logic/block diagram of the project.

## 📚 Concept Used
--> Multiplexer – Digital Logic
--> Case statements in Verilog
--> Real-world mapping: App notifications

## 🚀 How It Works
- 8 input signals simulate 8 app notifications.
- A 3-bit selector chooses which app's notification is viewed.
- The output shows if that app has a notification (1) if not (0).

## 🎯 Applications
- Digital data routing
- Control systems
- Real-world analogy for learning (e.g., mobile notifications)

## 🧪 Sample Simulation
- Inputs: `8'b00100100` (Only Gmail and Facebook have notifications)
- Selector: `3'b010` (Gmail) → Output = `1`
- Selector: `3'b000` (WhatsApp) → Output = `0`

## 🛠️ Tools Used
- Verilog
- Simulators: ModelSim / EDA Playground
