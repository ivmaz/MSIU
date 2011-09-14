$(function() {
  $("#film_person_tokens").tokenInput("/people.json", {
    crossDomain: false,
    prePopulate: $("#film_person_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите имя актера',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});

$(function() {
  $("#film_genre_tokens").tokenInput("/genres.json", {
    crossDomain: false,
    prePopulate: $("#film_genre_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите жанр',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});


$(function() {
  $("#film_country_tokens").tokenInput("/countries.json", {
    crossDomain: false,
    prePopulate: $("#film_country_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите страну',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});



$(function() {
  $("#film_post_tokens").tokenInput("/posts.json", {
    crossDomain: false,
    prePopulate: $("#film_post_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите имя участника',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});
