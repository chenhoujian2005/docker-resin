function windowOpen(url, setWidth, setHeight) {
    var setLeft = (window.screen.width - setWidth) / 2;
    var setTop = (window.screen.height - setHeight) / 2;
    window.open(url, '', config = 'menubar=0,status=0,toolbar=0,width=' + setWidth + ',height=' + setHeight + ',left=' + setLeft + ',top=' + setTop + ',scrollbars=yes,resizable=yes');
}

function blockRadio(obj, targetValue) {
    for (var i = 0; i < obj.length; i++) {
        if (obj[i].value == targetValue) {
            obj[i].disabled = true;
        }
    }
}

function trim(stringToTrim) {
    return stringToTrim.replace(/^\s+|\s+$/g, "");
}

function isNumberKey() {
    var charCode = event.keyCode;
    return !(charCode > 31 && (charCode < 48 || charCode > 57))
}

var EMPTY = '';
function isEmptyByValue(value) {
    return trim(value) == EMPTY;
}

function isEmptyById(id) {
    var obj = document.getElementById(id);
    if (obj == null) return true;
    return isEmptyByValue(obj.value);
}

function setValueById(id, value) {
    var obj = document.getElementById(id);
    if (obj == null) return;
    obj.value = value;
}

function getSelectedTextSelectBox(id) {
    var dropdown = document.getElementById(id);
    var index = dropdown.selectedIndex;
    if (dropdown.options[index].value == '') {
        return '';
    }
    return dropdown.options[index].text;
}

function getSelectedValueSelectBox(id) {
    var dropdown = document.getElementById(id);
    var index = dropdown.selectedIndex;
    return dropdown.options[index].value;
}

var now = new Date();
var dd = now.getDate() < 10 ? '0' + now.getDate() : now.getDate();
var mm = now.getMonth() < 10 ? '0' + (now.getMonth() + 1) : (now.getMonth() + 1);
var yyyy = now.getYear();
var HH = now.getHours() < 10 ? '0' + now.getHours() : now.getHours();
var MM = now.getMinutes() < 10 ? '0' + now.getMinutes() : now.getMinutes();

function getNow(){
    return dd + '/' + mm + '/' + yyyy + ' ' + HH + ':' + MM;
}
function getCurrentDate(){
    return dd + '/' + mm + '/' + yyyy;
}
function getCurrentTime(){
    return HH + ':' + MM;
}

function validateCheckbox(obj, alertMessage) {
    var isCheck = false;
    if (obj != null) {
        if (obj.length == undefined) {
            if (obj.checked) {
                isCheck = true;
            }
        } else {
            for (var i = 0; i < obj.length; i++) {
                if (obj[i].checked) {
                    isCheck = true;
                    break;
                }
            }
        }
    }
    if (isCheck) {
        return true;
    } else {
        alert(alertMessage);
        return false;
    }
}

function popupModalDialogWindowOpen(url, setWidth, setHeight, name) {
    var setLeft = (window.screen.width - setWidth) / 2;
    var setTop = (window.screen.height - setHeight) / 2;
    var config = 'resizable=yes,menubar=true,toolbar=false,scrollbars=yes,width=' + setWidth + ',height=' + setHeight + ',left=' + setLeft + ',top=' + setTop;
    return window.open(url, name, config);
}

function openPopupWindow(url, setWidth, setHeight) {
    var setLeft = (window.screen.width - setWidth) / 2;
    var setTop = (window.screen.height - setHeight) / 2;
    var config = 'resizable=yes,menubar=true,toolbar=false,scrollbars=yes,width=' + setWidth + ',height=' + setHeight + ',left=' + setLeft + ',top=' + setTop;
    return window.open(url,'', config);
}

function checkEmail(email) {
   // alert(email);
    var firstchunk,indx,secondchunk;
    if (email == "") {
        return true;
    }
    indx = email.indexOf("@");
    if (indx == -1) {
        return true;
    }
    firstchunk = email.substr(0, indx);
    secondchunk = email.substr(indx + 1);
    if ((firstchunk.length < 2 ) || (secondchunk.length < 7) || (secondchunk.indexOf(".") == -1)) {
        return true;
    }
    //return  checkEmail(email.value);
    return false;
}