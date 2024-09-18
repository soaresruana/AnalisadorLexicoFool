public class Yytoken {
    public String type;
    public String value;

    public Yytoken(String type, String value) {
        this.type = type;
        this.value = value;
    }

    @Override
    public String toString() {
        return "Token: " + type + ", value: " + value;
    }
}
