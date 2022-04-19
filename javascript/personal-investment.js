// change inline css color based on text
const color = function(texts) {
    let color = '';
    const textLst = texts.split(" ");
    for (let text of textLst) {
        if (text == 'Buy') {
            color = 'style="color:green;"';
        } else if (text == 'Sell') {
            color = 'style="color:red;"';
        }
    }
    return color;
}

// add content to personal-investment page
// stock listing section
const getStock = function() {
    $.getJSON('../json/stocks.json', function(data){
        console.log(data);
        $.each(data.stock, (key, value) => {
            $('#stocklst').append(`
            <div class="small-box">
            <p>${value.company}</p>
            <p>Current Price: ${value.price}</p>
            <a href="./company-insights.html">More about</a>
            </div>
            `
            )
        })
    })
};

// add content to personal-investment page
// buy/sell advisory section
const getIndicator = function() {
    $.getJSON('../json/stocks.json', function(data){
        console.log(data);
        $.each(data.stock, (key, value) => {
            $('#indicator').append(`
            <div class="small-box">
            <p>${value.company}</p>
            <p>Rating: <span ${color(value.advisory)}>${value.advisory}</span></p>
            <a href="./advisory.html">Open</a>
            </div>
            `
            )
        })
    })
};

// put functions together
const outputJson = function() {
    getStock();
    getIndicator();
};

// run the functions when document's ready
$(document).ready(outputJson);

