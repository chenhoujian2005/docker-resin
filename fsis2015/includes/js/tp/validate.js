var EMPTY = '';

function isEmpty(obj) {
    if (obj == null) return true;
    return isEmptyValue(obj.value);
}

function isEmptyValue(value) {
    return (value.replace(/\s+$/, '') == EMPTY);
}

function isEmptyById(id) {
    var obj = document.getElementById(id);
    if (obj == null) return true;
    return isEmptyValue(obj.value);
}

function isCheckboxChecked(obj) {
    if (obj != null) {
        if (obj.length == undefined) {
            if (obj.checked) return true;
        } else {
            for (var i = 0; i < obj.length; i++) {
                if (obj[i].checked) return true;
            }
        }
    }
    return false;
}

function isRadioChecked(obj) {
    for (var i = 0; i < obj.length; i++)
        if (obj[i].checked) return true;
    return false;
}

function validateCheckBox(obj, showMsg) {
    if (!isCheckboxChecked(obj)) {
        alert(showMsg);
        return false;
    }
    return true;
}
function confirmDeleteCheckBox(obj, showMsg, confirmMsg) {
    if (!isCheckboxChecked(obj)) {
        alert(showMsg);
        return false;
    } else {
        return confirm(confirmMsg);
    }
}

function validateRadio(obj, showMsg) {
    if (!isRadioChecked(obj)) {
        alert(showMsg);
        return false;
    }
    return true;
}