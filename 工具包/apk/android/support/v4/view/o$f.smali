.class Landroid/support/v4/view/o$f;
.super Landroid/support/v4/view/o$d;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1422
    invoke-direct {p0}, Landroid/support/v4/view/o$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1433
    invoke-static {p1}, Landroid/support/v4/view/r;->a(Landroid/view/View;)V

    .line 1434
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1441
    invoke-static {p1, p2}, Landroid/support/v4/view/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method public b(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1449
    invoke-static {p1}, Landroid/support/v4/view/r;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 1456
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 1457
    const/4 p2, 0x2

    .line 1459
    :cond_4
    invoke-static {p1, p2}, Landroid/support/v4/view/r;->a(Landroid/view/View;I)V

    .line 1460
    return-void
.end method
