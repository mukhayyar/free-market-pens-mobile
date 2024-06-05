import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/riwayat_page.dart';
import 'package:free_market_pens_mobile/presentation/screens/buyer/home_page.dart';
import 'package:free_market_pens_mobile/theme.dart';

enum _SelectedTab { home, riwayat, profile }

class BuyerPage extends StatefulWidget {
  const BuyerPage({super.key});

  @override
  _BuyerPageState createState() => _BuyerPageState();
}

class _BuyerPageState extends State<BuyerPage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController tabController;
  bool _isBarVisible = true;

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: _SelectedTab.values.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        _selectedIndex = tabController.index;
      });
    });
  }

  void _handleIndexChanged(int index) {
    setState(() {
      _selectedIndex = index;
      tabController.animateTo(index);
    });
  }

  Widget _getPage(int index) {
    switch (_SelectedTab.values[index]) {
      case _SelectedTab.home:
        return HomePage();
      case _SelectedTab.riwayat:
        return RiwayatPage();
      case _SelectedTab.profile:
        return RiwayatPage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? onPrimary : tertiary,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.history,
                color: _selectedIndex == 1 ? onPrimary : tertiary,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: _selectedIndex == 2 ? onPrimary : tertiary,
              ),
            ),
          ],
        ),
        fit: StackFit.expand,
        icon: (width, height) => Center(
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                _isBarVisible = !_isBarVisible;
              });
            },
            icon: Icon(
              _isBarVisible
                  ? Icons.arrow_downward_rounded
                  : Icons.arrow_upward_rounded,
              color: Colors.white,
              size: width,
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(500),
        duration: Duration(seconds: 1),
        curve: Curves.decelerate,
        showIcon: true,
        width: MediaQuery.of(context).size.width * 0.6,
        barColor: primary,
        start: 2,
        end: 0,
        offset: _isBarVisible
            ? 10
            : -100, // Adjust this value to hide the bar completely
        barAlignment: Alignment.bottomCenter,
        iconHeight: 35,
        iconWidth: 35,
        reverse: false,
        barDecoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(500),
        ),
        iconDecoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(500),
        ),
        hideOnScroll: true,
        scrollOpposite: false,
        onBottomBarHidden: () {},
        onBottomBarShown: () {},
        body: (context, controller) => TabBarView(
          controller: tabController,
          dragStartBehavior: DragStartBehavior.down,
          physics: const BouncingScrollPhysics(),
          children: [
            _getPage(0),
            _getPage(1),
            _getPage(2),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
