setTimeout(interval = () => {
    postMessage("");
    //recalls interval() continuously at approximately 60hz.
    requestAnimationFrame(interval)
}, 1);