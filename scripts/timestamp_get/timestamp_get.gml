var epoch = date_create_datetime(2016, 1, 1, 0, 0, 1)
var date = date_current_datetime()

var epoch = round(date_second_span(epoch, date))

return epoch