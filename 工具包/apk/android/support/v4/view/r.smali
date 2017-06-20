.class Landroid/support/v4/view/r;
.super Ljava/lang/Object;
.source "ViewCompatJB.java"


# direct methods
.method public static a(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 39
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 60
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method
