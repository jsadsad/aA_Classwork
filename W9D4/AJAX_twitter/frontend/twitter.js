 const FollowToggle = require ("./follow_toggle");

 $(() => {

    const $toggleButton = $('button.follow-toggle');
    
    $toggleButton.each((idx, htmlEle) => {
        new FollowToggle($(htmlEle));
    });
    
  });
