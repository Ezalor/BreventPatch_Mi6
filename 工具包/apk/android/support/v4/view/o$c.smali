.class Landroid/support/v4/view/o$c;
.super Landroid/support/v4/view/o$b;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1166
    invoke-direct {p0}, Landroid/support/v4/view/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .registers 5

    .prologue
    .line 1193
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/p;->a(III)I

    move-result v0

    return v0
.end method

.method a()J
    .registers 3

    .prologue
    .line 1169
    invoke-static {}, Landroid/support/v4/view/p;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 1177
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/p;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1178
    return-void
.end method

.method public c(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1205
    invoke-static {p1}, Landroid/support/v4/view/p;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method
