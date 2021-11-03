public native class MyCustomClass extends IScriptable {
    public native func GetNumber() -> Float
}

public class MyCustomClassPrinter extends ScriptableSystem {
    public func OnAttach() -> Void {
        LogChannel(n"DEBUG", "Hello!");
        let c = new MyCustomClass();
        LogChannel(n"DEBUG", "Number: " + FloatToString(c.GetNumber()));
    }
}
