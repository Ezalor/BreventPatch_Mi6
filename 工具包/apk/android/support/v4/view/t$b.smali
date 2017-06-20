.class Landroid/support/v4/view/t$b;
.super Landroid/support/v4/view/t$a;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v4/view/t$a;-><init>()V

    .line 207
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 241
    invoke-static {p1}, Landroid/support/v4/view/v;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
