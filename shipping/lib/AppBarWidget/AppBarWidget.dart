import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onLeadingPressed;
  final VoidCallback? onQRPressed;
  final VoidCallback? onSearchPressed;

  const AppBarWidget({
    Key? key,
    this.onLeadingPressed,
    this.onQRPressed,
    this.onSearchPressed,
  }) : super(key: key);

  final String logo =
  '''<svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48">
  <g id="Group_68" data-name="Group 68" transform="translate(-855 -380)">
    <path id="Path_1" data-name="Path 1" d="M898.283,401.107V418.2c-.007,1.958-2.523,4.5-4.5,4.446l-17.058.12" transform="translate(-19.684 -19.146)" fill="none" stroke="#fdfefe" stroke-width="2"/>
    <path id="Path_2" data-name="Path 2" d="M21.554,0V17.095c-.007,1.958-2.523,4.5-4.5,4.446L0,21.66" transform="translate(901.054 425.282) rotate(180)" fill="none" stroke="#fdfefe" stroke-width="2"/>
    <path id="Path_3" data-name="Path 3" d="M934.687,434.638h-5.751c-.694.013-1.032.352-1.06,1.13v8.081c-.02.53-.213.823-.864.781h-7.834" transform="translate(-56.203 -48.155)" fill="none" stroke="#fdfefe" stroke-linejoin="round" stroke-width="2"/>
    <path id="Path_6" data-name="Path 6" d="M14.607,0H9.244C8.6.013,8.282.343,8.255,1.1V8.988c-.019.518-.2.8-.806.762H0" transform="translate(894.607 420.615) rotate(180)" fill="none" stroke="#fdfefe" stroke-linejoin="round" stroke-width="2"/>
    <path id="Path_5" data-name="Path 5" d="M16.25,0H10.5C9.8.013,9.466.352,9.438,1.13V9.211c-.02.53-.213.823-.864.781H0" transform="translate(861.874 420.202) rotate(-90)" fill="none" stroke="#fdfefe" stroke-linejoin="round" stroke-width="2"/>
    <path id="Path_4" data-name="Path 4" d="M16.469,0H10.718c-.694.013-1.032.352-1.06,1.13V9.211c-.02.53-.213.823-.864.781H0" transform="translate(895.685 386.853) rotate(90)" fill="none" stroke="#fdfefe" stroke-linejoin="round" stroke-width="2"/>
    <g id="Ellipse_1" data-name="Ellipse 1" transform="translate(870 420)" fill="none" stroke="#fdfefe" stroke-width="1">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
    <g id="Ellipse_2" data-name="Ellipse 2" transform="translate(878 425)" fill="none" stroke="#fdfefe" stroke-width="2">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
    <g id="Ellipse_3" data-name="Ellipse 3" transform="translate(894 409)" fill="none" stroke="#fdfefe" stroke-width="2">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
    <g id="Ellipse_4" data-name="Ellipse 4" transform="translate(855 402)" fill="none" stroke="#fdfefe" stroke-width="2">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
    <g id="Ellipse_5" data-name="Ellipse 5" transform="translate(861 395)" fill="none" stroke="#fdfefe" stroke-width="2">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
    <g id="Ellipse_6" data-name="Ellipse 6" transform="translate(877 380)" fill="none" stroke="#fdfefe" stroke-width="2">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
    <g id="Ellipse_7" data-name="Ellipse 7" transform="translate(884 384)" fill="none" stroke="#fdfefe" stroke-width="2">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
    <g id="Ellipse_8" data-name="Ellipse 8" transform="translate(900 402)" fill="none" stroke="#fdfefe" stroke-width="2">
      <circle cx="1.5" cy="1.5" r="1.5" stroke="none"/>
      <circle cx="1.5" cy="1.5" r="1" fill="none"/>
    </g>
  </g>
</svg>

'''; // الرمز SVG

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: LayoutBuilder(
        builder: (context, constraints) {
          return IconButton(
            icon: SvgPicture.string(
              logo,
              height: constraints.maxWidth * 0.5,
            ),
            onPressed: onLeadingPressed,
          );
        },
      ),
      actions: <Widget>[

        IconButton(
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
          onPressed: onSearchPressed,
        ),
        IconButton(
          icon: const Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
          ),
          onPressed: onQRPressed,
        ),
      ],
      backgroundColor: Color(0xFF13033A),
    );
  }
}
