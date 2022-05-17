window.addEventListener('message', function (event) {
    if (event.data.action == "status") {
        let show = event.data.show;
        let title = event.data.title;
        let values = event.data.values;
    
        if (show) {
            $(".status").empty();
            $(".status").append(createTitle(title));
            $(".status").append(createValues(values));
            $(".status").show();
            $(".status").animate({ bottom: '0px' }, 250);
    
        } else {
            $(".status").animate({ bottom: '-500px' }, 250, function () {
                $(".status").empty();
                $(".status").hide();
            });
        }
    }

});

const sleep = (ms) => {
    return new Promise((resolve) => setTimeout(resolve, ms));
};

function createTitle(title) {
    return createParagraph(title, "title");
}

function createValues(values) {
    var valuesHTML = "";
    for (var i = 0; i < values.length; ++i) {
        valuesHTML += createParagraph(values[i], "text");
    }

    return valuesHTML;
}

function createParagraph(contents, className) {
    return "<p class='" + className + "'>" + contents + "</p>";
}