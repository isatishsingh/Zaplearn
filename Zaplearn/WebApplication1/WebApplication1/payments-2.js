var cards = document.getElementById("child-payment4");
var paypal = document.getElementById("paypal");

function displaycards() {
    cards.style.display = "block";
    paypal.style.display = "none";
}

function displaypaypal() {
    paypal.style.display = "block";
    cards.style.display = "none";

}

function displaypaymentcourse() {
    console.log("16::::Function Called")
    //event.preventDefault();
    var count = 0;
    var cardname = document.getElementById("cardname").value;
    var cardnum = document.getElementById("cardnum").value;
    var cardexp = document.getElementById("cardexp").value;
    var expyear = document.getElementById("cardyear").value;
    var cvv = document.getElementById("cvv").value;
    var address = document.getElementById("address").value;
    var country = document.getElementById("country").value;
    var city = document.getElementById("city").value;
    var state = document.getElementById("state").value;
    var code = document.getElementById("code").value;

    if (cardname === "") {
        count++;
    }
    if (cardnum === "") {
        count++;
    }
    if (cardexp === "-Select One") {
        count++;
    }
    if (expyear === "-Select One") {
        count++;
    }
    if (cvv === "") {
        count++;
    }
    if (address === "") {
        count++;
    }
    if (country === "-Select One-") {
        count++;
    }
    if (city === "") {
        count++;
    }
    if (state === "") {
        count++;
    }
    if (code === "") {
        count++;
    }
    console.log(count);

    if (count > 0) {
        alert("Fill all details")
    }
    else if (cardnum.length != 12) {
        alert("Write correct card number")
    }
    else if (cvv.length != 3) {
        alert("Write correct cvv")
    }
    else {
        var displaypayent = document.getElementById("paymentsuccesfull");
        displaypayent.style.display = "block";
        cards.style.display = "none";
    }
}


var paymentArr = JSON.parse(localStorage.getItem("course_list"));
var paymentdone = document.getElementById("paymentsuccesfull");
var h2 = document.createElement("h2");
h2.setAttribute("id", "h2p");
h2.innerText = "Confirm Your Payment";

var divt = document.createElement("div");
var divt1 = document.createElement("div");
divt1.innerText = "Total";

var divt2 = document.createElement("div");
var pay = Number(paymentArr[0].price);
divt2.innerText = "₹ " + ((pay) + (pay * 18) / 100);

divt.append(divt1, divt2);
var divp = document.createElement("div");
divp.setAttribute("id", "divp")

var hr = document.createElement("hr");

var d = document.createElement("div");
var btnc = document.createElement("button");
btnc.setAttribute('onclick', 'cancelPayment()')
d.append(btnc);
btnc.innerText = "Cancel";

var d2 = document.createElement("div");
var btnp = document.createElement("button");
btnp.setAttribute('onclick', 'paymentsuccess()')
d2.append(btnp);
btnp.innerText = "Pay Now";

divp.append(d, d2);
paymentdone.append(h2, divt, hr, divp);

function cancelPayment() {
    location.href = "../paymentspage/payments.html"
}

function paymentsuccess() {
    alert("Congratulations payment successfull");
    location.href = "../index.html"
}



