fetch("https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=zh-CN")
  .then(res => res.json())
  .then(data => {
    const imgUrl = "https://www.bing.com" + data.images[0].url;
    document.body.style.backgroundImage = `url(${imgUrl})`;
    document.body.style.backgroundSize = "cover";
    document.body.style.backgroundPosition = "center";
  });
