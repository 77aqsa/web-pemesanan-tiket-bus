var tPrice = [
    {
        name: 'Ekonomi',
        price: 100000,
    },
    {
        name: 'Bisnis',
        price: 150000,
    },
    {
        name: 'Eksekutif',
        price: 200000,
    },
    {
        name: 'pilih',
        price: 000
    }
];

function chkMob() {
    var str = document.getElementById("nohp").value;
    var ptr = /^08[0-9]{10}$/;
    var chck = ptr.test(str);

    if(!chck)
    alert("Moblie Number is Incorrect");
}

function ticketPrice() {
    selectElement = document.querySelector('#kelas');
    kelas = selectElement.options[selectElement.selectedIndex].value;
    data = tPrice.find(tPrice => tPrice.name == kelas);
    ticket_Price = data.price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    document.getElementById('hargaTiket').value = "Rp. " + ticket_Price;
    document.querySelector('#hargaTiketDisp').textContent = "Rp. " + ticket_Price;
}

function total() {
    jumlahP = parseInt(document.getElementById('jumlahP').value);
    jumlahPL = parseInt(document.getElementById('jumlahPL').value);
    totalPrice = (data.price*jumlahP) + (data.price*jumlahPL*0.9);
    totalcomma = totalPrice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    document.getElementById('total').value = "Rp. " + totalcomma;
    document.getElementById('totalDisp').innerHTML = "Rp. " + totalcomma;
}

/* 
set tanggal default esok hari &
disable tanggal sudah lewat
*/
function getDate() {
    var today = new Date();
    var dd = today.getDate();
    var tom = parseInt(dd) + 1
    var mm = today.getMonth()+1;
    var yyyy = today.getFullYear();
  
    if(dd<10) {
        dd = '0'+dd
    } 
  
    if(mm<10) {
        mm = '0'+mm
    } 
    now = yyyy + '-' + mm + '-' + dd;
    tomorrow = yyyy + '-' + mm + '-' + tom;
    document.getElementById('date').setAttribute("min", now);
    document.getElementById('date').value = tomorrow;
}

window.onload = function() {
    getDate();
};

function postForm(){
    var name = document.getElementById('name').value;
    var idnum = document.getElementById('idnum').value;
    var nohp = document.getElementById('nohp').value;
    var kelas = document.getElementById('kelas').value;
    var date = document.getElementById('date').value;
    var jumlahP = document.getElementById('jumlahP').value;
    var jumlahPL = document.getElementById('jumlahPL').value;
    var hargaTiket = document.getElementById('hargaTiket').innerHTML;
    var total = document.getElementById('total').innerHTML;

    console.log(htiket);
    console.log(total);

    var params = "name="+name+"&idnum="+idnum+"&nohp="+nohp+"&kelas="+kelas+"&date"+date+
    "&jumlahP="+jumlahP+"&jumlahPL="+jumlahPL+"&hargaTiket="+hargaTiket+"&total="+total;
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'insert.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function(){
        if(this.status == 200){
            alert("pemesanan berhasil");
        }
    }
    xhr.send(params);
}