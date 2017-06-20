.class Landroid/support/v4/view/p;
.super Ljava/lang/Object;
.source "ViewCompatHC.java"


# direct methods
.method public static a(III)I
    .registers 4

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method static a()J
    .registers 2

    .prologue
    .line 27
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 36
    return-void
.end method
