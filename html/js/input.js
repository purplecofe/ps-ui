var Input = false;

function CreateInput(data) {
    $(".input").append(`<div class='input-title'>${data.title}</div>`);

    data.inputs.forEach((input, index) => {
        let row = "";
        switch(input.type) {
            case "text":
                row = `<div class='input-row'><input placeholder="${input.placeholder}" type="text"></div>`;
                break;
            case "password":
                row = `<div class='input-row'><input placeholder="${input.placeholder}" type="password"></div>`;
                break;
            case "number":
                row = `<div class='input-row'><input placeholder="${input.placeholder}" type="number"></div>`;
                break;
            default:
                break;
        };
        $(".input").append(row);
    });
    $(".input").append(`<div class='input-submit'><button type="submit" class="input-btn">Submit</button></div>`);
    $(".input").fadeIn(0);
    Input = true;
}

window.addEventListener('message', (event) => {
    if (event.data.action === 'input') {
        CreateInput(event.data.data);
    }
});

document.addEventListener("keydown", function(ev) {
    let key_pressed = ev.key;
    let valid_keys = ['Escape'];
    if (Input) {
        if (valid_keys.includes(key_pressed)) {
            switch (key_pressed) {
                case 'Escape':
                    $(".input").fadeOut(0);
                    document.querySelector('.input').innerHTML = '';
                    Input = false;
                    break;
            }
        }
    }
});