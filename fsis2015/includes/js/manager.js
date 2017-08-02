function findVersion(dataSetVersion,dataSetTwo,dataSetThree){
    if (!isEmptyByValue(dataSetVersion)) {
        alert(dataSetVersion);
        AjaxManager.findDsTitle(dataSetVersion,function(data) {
            clearList(dataSetTwo);
            dwr.util.addOptions(dataSetTwo, data, "id", "version");
        });
    }
    else {
        clearList(dataSetTwo);
    }
    clearList(dataSetThree)
}
function findVersion2(dataSetVersion,dataSetTwo){
    if (!isEmptyByValue(dataSetVersion)) {
        AjaxManager.findUserGroup(dataSetVersion, function(data) {
            clearList(userGroupZone);
            dwr.util.addOptions(dataSetTwo, data, "id", "name");
        });
    } else {
        clearList(dataSetTwo);
    }
    clearList(dataSetThree) ;
}
function clearList(zone) {
    dwr.util.removeAllOptions(zone);
    document.getElementsByName(zone)[0].options[0] = new Option('----------  Please Select  ----------', '');
}

function findTitle(dataSetVersion,dataSetTwo,dataSetThree,dataSetF){
        if (!isEmptyByValue(dataSetVersion)) {
            AjaxManager.findDsTitle1(dataSetVersion, function (data) {
                clearList(dataSetTwo);
                dwr.util.addOptions(dataSetTwo, data, "id", "name");
            });
        }
        else {
            clearList(dataSetTwo);
        }

    clearList(dataSetThree);
    clearList(dataSetF)  ;
}
function findSubTitle(dataSet,dataSetThree,dataSetF){
    if (!isEmptyByValue(dataSet)) {
        AjaxManager.findDsTitle2(dataSet, function(data) {
            clearList(dataSetThree);
            dwr.util.addOptions(dataSetThree, data, "id", "name");
        });
    } else {
        clearList(dataSetThree);
         clearList(dataSetF)  ;
    }

}

function findSubTitle2(dataSet,dataSetFour,dataSetF){
    if (!isEmptyByValue(dataSet)) {
        AjaxManager.findDsTitle3(dataSet, function(data) {
            clearList(dataSetFour);
            dwr.util.addOptions(dataSetFour, data, "id", "name");
        });
    } else {
        clearList(dataSetFour);
        clearList(dataSetF)  ;
    }

}

function findSubTitle3(dataSet,dataSetFive ,dataSetF){
    if (!isEmptyByValue(dataSet)) {
        AjaxManager.findDsTitle4(dataSet, function(data) {
            clearList(dataSetFive);
            dwr.util.addOptions(dataSetFive, data, "id", "name");
        });
    } else {
        clearList(dataSetFive);
        clearList(dataSetF)  ;
    }

}

function findSubTitle4(dataSet,dataSetSix ,dataSetF){
    if (!isEmptyByValue(dataSet)) {
        AjaxManager.findDsTitle5(dataSet, function(data) {
            clearList(dataSetSix);
            dwr.util.addOptions(dataSetSix, data, "id", "name");
        });
    } else {
        clearList(dataSetSix);
        clearList(dataSetF)  ;
    }

}

function findSubTitle5(dataSet,dataSetSeven ,dataSetF){
    if (!isEmptyByValue(dataSet)) {
        AjaxManager.findDsTitle6(dataSet, function(data) {
            clearList(dataSetSeven);
            dwr.util.addOptions(dataSetSeven, data, "id", "name");
        });
    } else {
        clearList(dataSetSeven);
        clearList(dataSetF)  ;
    }

}

function findSubTitle6(dataSet,dataSetEight  ,dataSetF){
    if (!isEmptyByValue(dataSet)) {
        AjaxManager.findDsTitle7(dataSet, function(data) {
            clearList(dataSetEight);
            dwr.util.addOptions(dataSetEight, data, "id", "name");
        });
    } else {
        clearList(dataSetEight);
        clearList(dataSetF)  ;
    }

}

function findVersions(dataSet,dataSetF){
    if (!isEmptyByValue(dataSet)) {
        AjaxManager.findDsTitle3(dataSet, function(data) {
            clearList(dataSetF);
            dwr.util.addOptions(dataSetF, data, "id", "name");
        });
    } else {
        clearList(dataSetF);
    }

}

 function findSuperVisor(organization,userId,superVisor){
    if (!isEmptyByValue(organization)) {
        AjaxManager.searchSuperVisor(organization,userId, function(data) {
        clearList(superVisor);
        dwr.util.addOptions(superVisor, data, "id", "thaiName");
        });
    } else {
        clearList(superVisor);
    }
}

function findSubsystem(dataSetVersion,dataSetTwo,dataSetThree,dataSetF){
    if (!isEmptyByValue(dataSetVersion)) {
        AjaxManager.findSubSystemBySystemId(dataSetVersion, function (data) {
            clearList(dataSetTwo);
            dwr.util.addOptions(dataSetTwo, data, "id", "SubSystemName");
        });
    }
    else {
        clearList(dataSetTwo);
    }

}







