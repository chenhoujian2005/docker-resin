var EMPTY = '';

function getValue(id) {
    var obj = getObj(id);
    return (obj == null) ? EMPTY : obj.value;
}

function getObj(id) {
    return document.getElementById(id);
}

function focus(id) {
    var obj = getObj(id);
    if (obj == null) return;
    obj.focus();
}

function getRadioValue(obj) {
    for (var i = 0; i < obj.length; i++)
        if (obj[i].checked) return obj[i].value;
    return EMPTY;
}

function equals(id1, id2) {
    return getValue(id1) == getValue(id2);
}

function toReadOnly(elementName, type) {
    var element = document.getElementById(elementName);
    if (type == 'textarea' || type == 'text') {
        element.readOnly = true;
    } else if (type == 'select-one') {
        element.disabled = true;
    } else if (type == 'radio' || type == 'checkbox') {
        element = document.forms[0].elements[elementName];
        if (element.length == undefined) {
            element.disabled = true;
        } else {
            for (var i = 0; i < element.length; i++) {
                if (!element[i].disabled) element[i].disabled = true;
            }
        }
    }
}

function formToViewOnly() {
    var elements = document.all ? document.all : document.getElementsByTagName('*');
    for (var e = 0; e < elements.length; e++) {
        if (elements[e].type != undefined && elements[e].name != undefined) {
            if (!isEmpty(elements[e].type && !isEmpty(elements[e].name))) {
                toReadOnly(elements[e].name, elements[e].type);
            }
        }
    }
}

function getDateTimeTickerValueById(id) {
    dojo.widget.byId(id).getValue();
}

function disableById(id) {
    document.getElementById(id).disabled = true;
}

//use : multiEnableById(new Array('id1', 'id2'));
function multiDisableById(ids) {
    for (var i = 0; i < ids.length; i++) {
        var obj = getObj(ids[i]);
        if (obj != null) obj.disabled = true;
    }
}

function getDojoValue(id) {
    try {
        return dojo.widget.byId(id).getValue();
    } catch(e) {
        return '';
    }
}

function getDojoObj(id) {
    try {
        return dojo.widget.byId(id);
    } catch(e) {
        return null;
    }
}

function enableById(id) {
    document.getElementById(id).disabled = false;
}

//use : multiEnableById(new Array('id1', 'id2'));
function multiEnableById(ids) {
    for (var i = 0; i < ids.length; i++) {
        var obj = getObj(ids[i]);
        if (obj != null) obj.disabled = false;
    }
}

function disableDateTimeTickerById(id) {
    dojo.widget.byId(id).disable();
}

function enableDateTimeTickerById(id) {
    dojo.widget.byId(id).enable();
}

function nextElement(nextElement) {
    document.getElementById(nextElement).focus();
}

function spitToArr(obj) {
    var tmpValue = '';
    for (var i = 0; i < obj.length; i++) {
        tmpValue += (obj[i].value + ',');
    }
    return tmpValue.substring(0, tmpValue.length - 1);
}

// use default js
function showById(id) {
    var obj = getObj(id);
    if (obj == null) return;
    obj.style.display = 'inline';
}

function hideById(id) {
    var obj = getObj(id);
    if (obj == null) return;
    obj.style.display = 'none';
}

// use with effect of jquery
function show(id) {
    $(id).show("slow");
}

function hide(id) {
    $(id).hide("slow");
}

//show or hide
//use : multiSwapDisplay(new Array('d1:none', 'd2:inline'));
function multiSwapDisplay(objArray) {
    for (var i = 0; i < objArray.length; i++) {
        var thisObj = objArray[i];
        var index = thisObj.indexOf(":");
        var id = thisObj.substring(0, index);
        var effect = thisObj.substring(index + 1, thisObj.length);
        var obj = document.getElementById(id);
        if (!obj && obj.style.display == effect) return;
        obj.style.display = effect;
    }
}

function popup(url, setWidth, setHeight) {
    var setLeft = (window.screen.width - setWidth) / 2;
    var setTop = (window.screen.height - setHeight) / 2;
    var config = 'menubar=true,toolbar=false,scrollbars=yes,width=' + setWidth + ',height=' + setHeight + ',left=' + setLeft + ',top=' + setTop;
    window.open(url, '', config);
}

function trim(stringToTrim) {
    return stringToTrim.replace(/^\s+|\s+$/g,"");
}

function checkLimit(obj,limit){
    return obj.value.length < limit;
}

function prepareActiveReverseAjax() {
    try {
        dwr.engine.setActiveReverseAjax(true);
    } catch(e) {
    }
}





