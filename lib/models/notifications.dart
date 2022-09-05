class Notifications{
  var _id;
  var _dateCreate;
  var _type;
  var _title;
  var _content;
  var _iconUrl;
  var _status;
  var _heading;

  Notifications(this._id, this._dateCreate, this._type, this._title,
      this._content, this._iconUrl, this._status, this._heading);

  get heading => _heading;

  set heading(value) {
    _heading = value;
  }

  get status => _status;

  set status(value) {
    _status = value;
  }

  get iconUrl => _iconUrl;

  set iconUrl(value) {
    _iconUrl = value;
  }

  get content => _content;

  set content(value) {
    _content = value;
  }

  get title => _title;

  set title(value) {
    _title = value;
  }

  get type => _type;

  set type(value) {
    _type = value;
  }

  get dateCreate => _dateCreate;

  set dateCreate(value) {
    _dateCreate = value;
  }

  get id => _id;

  set id(value) {
    _id = value;
  }

//Notifications();





}