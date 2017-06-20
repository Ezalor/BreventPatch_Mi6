.class Landroid/support/v4/view/j$a;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/j;

.field private b:I


# direct methods
.method constructor <init>(Landroid/support/v4/view/j;)V
    .registers 2

    .prologue
    .line 484
    iput-object p1, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 485
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 498
    iget v1, p0, Landroid/support/v4/view/j$a;->b:I

    if-nez v1, :cond_34

    .line 500
    iget-object v1, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, v2, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v3, v3, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/j;->a(ILandroid/support/v4/view/i;)V

    .line 502
    iget-object v1, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget v1, v1, Landroid/support/v4/view/j;->e:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_26

    iget-object v0, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget v0, v0, Landroid/support/v4/view/j;->e:F

    .line 503
    :cond_26
    iget-object v1, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, v2, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/j;->a(IFZ)V

    .line 505
    :cond_34
    return-void
.end method

.method public a(IFI)V
    .registers 6

    .prologue
    .line 489
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    .line 491
    add-int/lit8 p1, p1, 0x1

    .line 493
    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/view/j;->a(IFZ)V

    .line 494
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V
    .registers 5

    .prologue
    .line 515
    iget-object v0, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/j;->a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V

    .line 516
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 509
    iput p1, p0, Landroid/support/v4/view/j$a;->b:I

    .line 510
    return-void
.end method

.method public onChanged()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, v2, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v3, v3, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/i;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/j;->a(ILandroid/support/v4/view/i;)V

    .line 522
    iget-object v1, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget v1, v1, Landroid/support/v4/view/j;->e:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_22

    iget-object v0, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget v0, v0, Landroid/support/v4/view/j;->e:F

    .line 523
    :cond_22
    iget-object v1, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, p0, Landroid/support/v4/view/j$a;->a:Landroid/support/v4/view/j;

    iget-object v2, v2, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/view/j;->a(IFZ)V

    .line 524
    return-void
.end method
