const previousText = document.querySelector("#previous-view");
const currentText = document.querySelector("#current-view");

class Calculator {
    constructor(previousText, currentText) {
        this.previousText = previousText;
        this.currentText = currentText;
        this.clear();
    };

    clear() {
        this.currentOperand = "";
        this.previousOperand = "";
        this.operation = undefined;
    };

    delete() {
        const len = this.currentOperand.toString().length;
        this.currentOperand = this.currentOperand.toString().substring(0,len-1);
    };

    append(number) {
        if (this.currentOperand.includes(".") && number === ".") return;
        this.currentOperand = this.currentOperand.toString() + number.toString();
    };

    chooseOperation(operation) {
        if (this.currentOperand.length == 0) return;
        if (this.previousOperand.length != 0 && this.operand != null) {
            console.log(hello);
        }
        this.previousOperand = this.currentOperand;
        this.currentOperand = "";
        this.operation = operation;
    };

    calculate(prevNum, currNum) {
        this.previousOperand = this.currentOperand;
        switch(this.operation) {
            case '+':
                this.currentOperand = prevNum + currNum;
                break;
            case '-':
                this.currentOperand = prevNum - currNum;
                break;
            case '*':
                this.currentOperand = prevNum * currNum;
                break;
            case '/':
                this.currentOperand = prevNum / currNum;
                break;
            default:
                console.log("error");
        }
    };

    updateDisplay() {
        this.currentText.innerText = this.currentOperand;
        this.previousText.innerText = this.previousOperand;
    };

}

const calculator = new Calculator(previousText, currentText);

const buttons = document.querySelectorAll("button");
buttons.forEach(e => {
    e.addEventListener("click", () => {
        if (e.hasAttribute("number")) {
            calculator.append(e.innerText);
            calculator.updateDisplay();
        } else if (e.hasAttribute("clear")) {
            calculator.clear();
            calculator.updateDisplay();
        } else if (e.hasAttribute("delete")) {
            calculator.delete();
            calculator.updateDisplay();
        } else if (e.hasAttribute("operation")) {
            calculator.chooseOperation(e.innerText);
            calculator.updateDisplay();
        } else if (e.hasAttribute("equal")) {
            calculator.calculate(parseFloat(previousText.innerText), parseFloat(currentText.innerText));
            calculator.updateDisplay();
        }
    })
})
