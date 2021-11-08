// Header
function commonHidden(ticketShow, ticketHidden) {
    $(ticketShow).hover(function () {
        $(ticketHidden).css("display", "flex");
    }, function () {
        $(ticketHidden).css("display", "none");
    });
}
commonHidden("#show-tivi", "#hiden-tivi");
commonHidden("#show-fridge", "#hiden-fridge");
commonHidden("#show-washing", "#hiden-washing");
commonHidden("#show-harmonic", "#hiden-harmonic");
commonHidden("#show-electool", "#hiden-electool");
commonHidden("#show-kitchen-utensils", "#hiden-kitchen-utensils");
commonHidden("#show-water-purifier", "#hiden-water-purifier");
commonHidden("#show-mobile", "#hiden-mobile");
commonHidden("#show-accessory", "#hiden-accessory");
commonHidden("#show-old-machine", "#hiden-old-machine");
commonHidden("#show-bike", "#hiden-bike");
commonHidden("#show-useful", "#hiden-useful");



