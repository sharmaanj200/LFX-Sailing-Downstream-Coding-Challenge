function filterList(integers) 
{
    if (integers.length % 10 !== 0) {
        throw new Error("The list length is not a multiple of 10.");
    }
    return integers.filter((_, index) => (index + 1) % 2 !== 0 && (index + 1) % 3 !== 0);
}


// Testing the function
try {
    console.log(filterList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])); // length multiple of 10 - works

} catch (error) {
    console.error(error.message);
}


try {
    console.log(filterList([1, 2, 3, 4, 5])); // length not a multiple of 10 - error

} catch (error) {
    console.error(error.message);
}


try {
    console.log(filterList([3, 2, 4, 5, 6, 1, 5, 8, 6, 3, 6, 1, 3, 9, 5, 4, 7, 9, 0, 6])); //multiple of 10 but with repeating digits

} catch (error) {
    console.error(error.message);
}

  