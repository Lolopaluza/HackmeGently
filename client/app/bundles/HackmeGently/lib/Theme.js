import Colors from 'material-ui/lib/styles/colors';
import ColorManipulator from 'material-ui/lib/utils/color-manipulator';
import Spacing from 'material-ui/lib/styles/spacing';
import zIndex from 'material-ui/lib/styles/zIndex';

export default {
  spacing: Spacing,
  zIndex: zIndex,
  fontFamily: 'Helvetica',
  palette: {
    primary1Color: Colors.deepOrange500,
    primary2Color: Colors.blue400,
    primary3Color: Colors.deepOrange700,
    accent1Color: Colors.blue900,
    accent2Color: Colors.deepOrange500,
    accent3Color: Colors.grey300,
    textColor: Colors.grey700,
    alternateTextColor: Colors.white,
    canvasColor: Colors.white,
    borderColor: Colors.grey300,
    disabledColor: ColorManipulator.fade(Colors.darkBlack, 0.3),
    pickerHeaderColor: Colors.purple500,
  }
};
