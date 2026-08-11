# 🔄 Palindrome Number Detector Using Verilog HDL

## 📌 Project Description

This project implements a **Palindrome Number Detector** using Verilog HDL.

The circuit accepts a 16-bit unsigned decimal number and determines whether the number reads the same forward and backward.

### Examples

```text
121   → Palindrome
1221  → Palindrome
12321 → Palindrome
123   → Not Palindrome
1234  → Not Palindrome
```

The project includes:

- Verilog source code
- Testbench
- Simulation
- GTKWave waveform
- Project documentation

---

## 🎯 Objectives

The objectives of this project are:

- Understand the concept of palindrome numbers.
- Reverse a decimal number using Verilog.
- Compare the original and reversed numbers.
- Design a palindrome detector.
- Create a Verilog testbench.
- Verify the design using simulation.
- Analyze the waveform using GTKWave.
- Upload the complete project to GitHub.

---

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

---

## 📂 Project Structure

```text
PALINDROME-VERILOG/
│
├── README.md
├── palindrome.v
├── palindrome_tb.v
└── simulation/
    └── palindrome_waveform.png
```

---

## 📖 What is a Palindrome?

A palindrome is a number that remains the same when its digits are reversed.

### Examples of Palindrome Numbers

```text
0
1
11
121
222
1221
12321
```

### Examples of Non-Palindrome Numbers

```text
12
123
1234
12345
65535
```

---

## 🧮 Algorithm

The palindrome detector uses the following algorithm:

### Step 1

Store the original number.

```text
original = number
```

### Step 2

Extract the last digit using:

```text
number % 10
```

### Step 3

Build the reversed number:

```text
reversed = reversed × 10 + digit
```

### Step 4

Remove the last digit:

```text
number = number / 10
```

### Step 5

Repeat until the number becomes zero.

### Step 6

Compare:

```text
original == reversed
```

If they are equal:

```text
Palindrome = 1
```

Otherwise:

```text
Palindrome = 0
```

---

## 🔍 Example

Consider:

```text
Number = 12321
```

Reverse the number:

```text
12321 → 1232 → 123 → 12 → 1 → 0
```

Extracted digits:

```text
1, 2, 3, 2, 1
```

Reversed number:

```text
12321
```

Therefore:

```text
12321 == 12321
```

Result:

```text
Palindrome = 1
```

---

## 🔌 Input

| Signal | Width | Description |
|--------|-------|-------------|
| `number` | 16 bits | Input decimal number |

---

## 📤 Output

| Signal | Width | Description |
|--------|-------|-------------|
| `is_palindrome` | 1 bit | 1 if palindrome, otherwise 0 |

---

## 📊 Example Results

| Input | Reverse | Result |
|------:|--------:|--------|
| 0 | 0 | Palindrome |
| 1 | 1 | Palindrome |
| 11 | 11 | Palindrome |
| 12 | 21 | Not Palindrome |
| 121 | 121 | Palindrome |
| 123 | 321 | Not Palindrome |
| 222 | 222 | Palindrome |
| 1221 | 1221 | Palindrome |
| 1234 | 4321 | Not Palindrome |
| 12321 | 12321 | Palindrome |
| 12345 | 54321 | Not Palindrome |
| 65535 | 53556 | Not Palindrome |

---

## 💻 Verilog Code

```verilog
module palindrome (
    input wire [15:0] number,
    output reg is_palindrome
);

    integer temp;
    integer original;
    integer reversed;
    integer digit;

    always @(*) begin

        original = number;
        temp     = number;
        reversed = 0;

        if (number == 0) begin
            is_palindrome = 1'b1;
        end

        else begin

            while (temp > 0) begin
                digit    = temp % 10;
                reversed = (reversed * 10) + digit;
                temp     = temp / 10;
            end

            if (original == reversed)
                is_palindrome = 1'b1;
            else
                is_palindrome = 1'b0;

        end

    end

endmodule
```

---

## 🧪 Testbench

The testbench verifies the design with different palindrome and non-palindrome numbers.

### Palindrome Numbers

```text
0
1
11
121
222
1221
12321
```

### Non-Palindrome Numbers

```text
12
123
1234
12345
65535
```

The testbench also generates a VCD file for waveform analysis.

---

## ▶️ Simulation Using Icarus Verilog

### Step 1: Compile

```bash
iverilog -o palindrome_sim palindrome.v palindrome_tb.v
```

### Step 2: Run

```bash
vvp palindrome_sim
```

---

## 📊 Expected Output

The terminal should display output similar to:

```text
Time=0   | Number=0     | Palindrome=1
Time=10  | Number=1     | Palindrome=1
Time=20  | Number=11    | Palindrome=1
Time=30  | Number=12    | Palindrome=0
Time=40  | Number=121   | Palindrome=1
Time=50  | Number=123   | Palindrome=0
Time=60  | Number=222   | Palindrome=1
Time=70  | Number=12321 | Palindrome=1
Time=80  | Number=12345 | Palindrome=0
Time=90  | Number=1221  | Palindrome=1
Time=100 | Number=1234  | Palindrome=0
Time=110 | Number=65535 | Palindrome=0
```

---

## 📈 Waveform Simulation

The testbench generates:

```text
palindrome.vcd
```

Open the waveform using GTKWave:

```bash
gtkwave palindrome.vcd
```

Add these signals:

```text
number
is_palindrome
```

The waveform should show:

```text
Number       Palindrome
-----------------------
0               1
1               1
11              1
12              0
121             1
123             0
222             1
12321           1
12345           0
1221            1
1234            0
65535           0
```

---

## 📸 Simulation Result

Take a screenshot of your GTKWave simulation and save it as:

```text
simulation/palindrome_waveform.png
```

Add the screenshot to this README:

```markdown
![Palindrome Simulation](simulation/palindrome_waveform.png)
```

---

## ✅ Result

The **Palindrome Number Detector** was successfully designed and simulated using Verilog HDL.

The circuit correctly identifies whether a decimal number reads the same forward and backward.

Examples:

```text
121   → Palindrome
1221  → Palindrome
12321 → Palindrome
123   → Not Palindrome
1234  → Not Palindrome
```

---

## 📚 Learning Outcomes

After completing this project, you will understand:

- Palindrome numbers
- Decimal digit extraction
- Modulo operation
- Integer division
- Number reversal
- Combinational logic
- Verilog `always @(*)`
- `while` loops
- Testbench development
- Icarus Verilog simulation
- GTKWave waveform analysis
- GitHub project organization

---

## 👩‍💻 Author

**Satya Nandini**

GitHub Repository:

`palindrome-verilog`