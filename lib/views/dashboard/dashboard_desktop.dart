part of dashboard_view;

class _DashboardDesktop extends StatelessWidget {
  final DashboardViewModel viewModel;

  _DashboardDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: viewModel.drawerscaffoldkey,
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        toolbarHeight: 60,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            viewModel.onMenuPressed();
            if (viewModel.drawerscaffoldkey.currentState.isDrawerOpen) {
              Navigator.pop(context);
            } else {
              viewModel.drawerscaffoldkey.currentState.openDrawer();
              //if drawer is closed then open the drawer.
            }
          },
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Dashboard",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        actions: [
          Center(
            child: Text(
              "Sonu",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
            child: IconButton(
              iconSize: 60,
              icon: Image.asset(
                'icons/menu_icon_grey.png',
                scale: 1,
              ),
              onPressed: () {
                viewModel.profile();
              },
            ),
          ),
        ],
      ),
      drawer: _buildAppDrawer(context),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width * 0.25 - 30,
                      margin: EdgeInsets.only(top: 20, left: 10),
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Charging Stations'),
                          Text('No of Charging Stations'),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.25 - 30,
                      margin: EdgeInsets.only(top: 20, left: 10),
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Charging Stations'),
                          Text('No of Charging Stations'),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.25 - 30,
                      margin: EdgeInsets.only(top: 20, left: 10),
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Charging Stations'),
                          Text('No of Charging Stations'),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.25 - 30,
                      margin: EdgeInsets.only(top: 20, left: 0),
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Charging Stations'),
                          Text('No of Charging Stations'),
                        ],
                      )),
                ],
              ),

              // Second Row
              Container(
                  width: MediaQuery.of(context).size.width - 30,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Charging Stations'),
                      Text('No of Charging Stations'),
                    ],
                  )),
              // Third Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.75 - 30,
                      margin: EdgeInsets.only(top: 20, left: 20),
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Charging Stations'),
                          Text('No of Charging Stations'),
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.25 - 30,
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Charging Stations'),
                          Text('No of Charging Stations'),
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAppDrawer(context) {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Sonu Kumar',
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w700),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'Dashboard',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'Charging Point Operators',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'Profile',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'Add Charging Point Operators',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'All Stations',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'Alert & Notification',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'Help & Support',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 1.0.h,
        ),
        ListTile(
          title: Text(
            'Update',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
