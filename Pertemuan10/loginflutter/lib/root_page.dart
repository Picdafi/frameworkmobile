enum AuthStatus {
  NOT_DETERMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}

@override
void initState() {
  super.initState();

  widget.auth.getCurrentUser().then((user){
    setState(() {
      if (user!= null) {
        _userId = user?.uid;
      }
      authStatus =
          user?.uid == null ? !AuthStatus
    }
  }
}