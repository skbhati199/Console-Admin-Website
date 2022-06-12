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
          Text("User name"),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              viewModel.profile();
            },
          ),
        ],
      ),
      drawer: _buildAppDrawer(context),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: Text('DashboardDesktop')),
              ],
            ),
            Row(
              children: [
                Text('DashboardDesktop'),
                Text('DashboardDesktop'),
                Text('DashboardDesktop'),
                Text('DashboardDesktop'),
              ],
            ),
            Row(
              children: [
                Text('DashboardDesktop'),
                Text('DashboardDesktop'),
                Text('DashboardDesktop'),
                Text('DashboardDesktop'),
              ],
            ),
          ],
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
