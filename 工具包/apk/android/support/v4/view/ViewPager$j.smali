.class Landroid/support/v4/view/ViewPager$j;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 3177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .registers 7

    .prologue
    .line 3180
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$c;

    .line 3181
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$c;

    .line 3182
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$c;->a:Z

    iget-boolean v3, v1, Landroid/support/v4/view/ViewPager$c;->a:Z

    if-eq v2, v3, :cond_1a

    .line 3183
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$c;->a:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 3185
    :goto_17
    return v0

    .line 3183
    :cond_18
    const/4 v0, -0x1

    goto :goto_17

    .line 3185
    :cond_1a
    iget v0, v0, Landroid/support/v4/view/ViewPager$c;->e:I

    iget v1, v1, Landroid/support/v4/view/ViewPager$c;->e:I

    sub-int/2addr v0, v1

    goto :goto_17
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 3177
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager$j;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
