const summary = document.getElementById('summary');
summary.style.display = 'none';

const calcbtn = document.getElementById('calculate');
calcbtn.addEventListener('click', function() {
    summary.style.display = 'block';
    // mendapatkan nilai dari form
    const weight = document.getElementById('weight').value;
    const height = document.getElementById('height').value;
    
    // perubahan string menjadi number
    const weightnum = Number(weight);
    const heightnum = Number(height);

    // menghitung bmi
    const hasilbmi = weightnum / (heightnum / 100) ** 2;
    const hasilbmifixed = hasilbmi.toFixed(1);

    const cb = document.getElementById('calculateBMI')
    const ir = document.getElementById('indicatorResult')

    cb.innerText = hasilbmifixed; // menampilkan hasil bmi

    //percabangan sesuai dengan hasil bmi
    if (hasilbmi < 18.5) {
        ir.innerText = 'Underweight';
    } else if (hasilbmi >= 18.5 && hasilbmi <= 24.9) {
        ir.innerText = 'Normal Weight';
    } else if (hasilbmi >= 25 && hasilbmi <= 29.9) {
        ir.innerText = 'Overweight';
    } else if (hasilbmi >= 30) {
        ir.innerText = 'Obesity';
    }
    });

