using System;
// wwwroot/contextMenu.js
function showContextMenu(x, y) {
    const contextMenu = document.getElementById('context-menu');
    contextMenu.style.left = x + 'px';
    contextMenu.style.top = y + 'px';
    contextMenu.style.display = 'block';
}

function fillRight() {
    const inputValue = parseInt(prompt("Enter a value:"));
    if (!isNaN(inputValue)) {
        const td = document.querySelector(`td[data-col="${selectedCol + 1}"][data-row="${selectedRow}"]`);
        if (td) {
            const input = td.querySelector('input');
            if (input) {
                input.value = inputValue;
                // Call the Blazor function to update the data
                DotNet.invokeMethod('YourAssemblyName', 'UpdateStyleNum', selectedCol + 1, selectedRow, inputValue);
            }
        }
    }
}


