# 📅 Leap Year Detector Using Verilog HDL

## 📌 Project Description

This project implements a **Leap Year Detector** using Verilog HDL.

The circuit accepts a 16-bit year as input and determines whether the given year is a leap year.

The output `is_leap_year` indicates the result:

```text
1 → Leap Year
0 → Not a Leap Year
```

The design uses the standard Gregorian calendar leap-year rules.

---

## 🎯 Objectives

The objectives of this project are:

- Understand leap-year calculation.
- Design a leap-year detector using Verilog HDL.
- Implement modulo-based logic.
- Create a Verilog testbench.
- Verify different leap-year conditions.
- Generate a simulation waveform.
- Analyze the result using GTKWave.
- Upload the project to GitHub.

---

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

---

## 📂 Project Structure

```text
leap-year-detector/
│
├── README.md
├── leap_year_detector.v
├── leap_year_detector_tb.v
└── simulation/
    └── leap_year_waveform.png
```

---

## 📖 What is a Leap Year?

A leap year is a year containing **366 days instead of 365 days**.

The extra day is added to February, making it 29 days.

---

## 🧮 Leap Year Rules

A year is a leap year if:

### Rule 1

The year is divisible by 400.

```text
year % 400 = 0
```

Example:

```text
2000 % 400 = 0
```

Therefore:

```text
2000 → Leap Year
```

### Rule 2

The year is divisible by 4 but not divisible by 100.

```text
year % 4 = 0
AND
year % 100 ≠ 0
```

Example:

```text
2024 % 4 = 0
2024 % 100 ≠ 0
```

Therefore:

```text
2024 → Leap Year
```

### Otherwise

The year is not a leap year.

---

## 📊 Truth Table / Examples

| Year | Divisible by 4 | Divisible by 100 | Divisible by 400 | Result |
|------|----------------|------------------|------------------|--------|
| 2024 | Yes | No | No | Leap Year |
| 2025 | No | No | No | Not Leap Year |
| 1900 | Yes | Yes | No | Not Leap Year |
| 2000 | Yes | Yes | Yes | Leap Year |
| 2028 | Yes | No | No | Leap Year |
| 2100 | Yes | Yes | No | Not Leap Year |
| 2400 | Yes | Yes | Yes | Leap Year |

---

## 🔌 Input

| Signal | Width | Description |
|--------|-------|-------------|
| `year` | 16 bits | Year to be checked |

---

## 📤 Output

| Signal | Width | Description |
|--------|-------|-------------|
| `is_leap_year` | 1 bit | 1 = Leap Year, 0 = Not Leap Year |

---

## 🔄 Working Principle

The circuit checks the following condition:

```text
(year % 400 == 0)
OR
((year % 4 == 0) AND (year % 100 != 0))
```

If the condition is TRUE:

```text
is_leap_year = 1
```

Otherwise:

```text
is_leap_year = 0
```

---

## 💻 Verilog Code

```verilog
module leap_year_detector (
    input wire [15:0] year,
    output reg is_leap_year
);

    always @(*) begin

        if ((year % 400 == 0) ||
            ((year % 4 == 0) && (year % 100 != 0)))

            is_leap_year = 1'b1;

        else
            is_leap_year = 1'b0;

    end

endmodule
```

---

## 🧪 Testbench

The testbench checks the following years:

```text
2024 → Leap Year
2025 → Not Leap Year
2000 → Leap Year
1900 → Not Leap Year
2028 → Leap Year
2100 → Not Leap Year
2400 → Leap Year
2023 → Not Leap Year
```

The testbench also generates a VCD file for waveform analysis.

---

## ▶️ Simulation Using Icarus Verilog

### Step 1: Compile

```bash
iverilog -o leap_sim leap_year_detector.v leap_year_detector_tb.v
```

### Step 2: Run

```bash
vvp leap_sim
```

---

## 📊 Expected Output

The simulation produces output similar to:

```text
Time=0  | Year=2024 | Leap Year=1
Time=10 | Year=2025 | Leap Year=0
Time=20 | Year=2000 | Leap Year=1
Time=30 | Year=1900 | Leap Year=0
Time=40 | Year=2028 | Leap Year=1
Time=50 | Year=2100 | Leap Year=0
Time=60 | Year=2400 | Leap Year=1
Time=70 | Year=2023 | Leap Year=0
```

---

## 📈 Waveform Simulation

The testbench generates:

```text
leap_year.vcd
```

Open the waveform using GTKWave:

```bash
gtkwave leap_year.vcd
```

Add these signals:

```text
year
is_leap_year
```

The waveform should show:

```text
2024 → 1
2025 → 0
2000 → 1
1900 → 0
2028 → 1
2100 → 0
2400 → 1
2023 → 0
```

---

## 📸 Simulation Result

Take a screenshot of the GTKWave simulation and save it as:

```text
simulation/leap_year_waveform.png
```

Add the image to this README:

```markdown
![Leap Year Simulation](simulation/leap_year_waveform.png)
```

---

## ✅ Result

The Leap Year Detector was successfully designed using Verilog HDL.

The simulation verifies the three important cases:

```text
2024 → Leap Year
1900 → Not Leap Year
2000 → Leap Year
```

This confirms that the design correctly implements the Gregorian calendar leap-year rules.

---

## 📚 Learning Outcomes

After completing this project, you will understand:

- Leap-year calculation
- Gregorian calendar rules
- Combinational logic
- Verilog `always @(*)`
- Modulo operator
- Conditional statements
- Testbench development
- Icarus Verilog simulation
- GTKWave waveform analysis
- GitHub project organization

---

## 👩‍💻 Author

**Satya Nandini**

GitHub Repository:

`leap-year-detector`