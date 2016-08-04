$('#tags').selectize();

$('#filter').submit(filterByTags);

function filterByTags(e) {
	var selected = this.elements['tags[]'].selectedOptions;
	var tags = Array.prototype.map.call(selected, x => x.value).join(',');
	var newTags = $('<input>').attr('type', 'hidden').attr('name', 'tags').val(tags);
	
	$(this.elements['tags[]']).attr('disabled', 'disabled');
	$(this).append(newTags);
}