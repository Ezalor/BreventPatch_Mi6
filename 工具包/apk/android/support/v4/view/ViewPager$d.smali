.class Landroid/support/v4/view/ViewPager$d;
.super Landroid/support/v4/view/b;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    .prologue
    .line 3054
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    return-void
.end method

.method private b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3107
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/i;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->b()I

    move-result v1

    if-le v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/b;)V
    .registers 5

    .prologue
    .line 3073
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    .line 3074
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(Ljava/lang/CharSequence;)V

    .line 3075
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$d;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(Z)V

    .line 3076
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3077
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(I)V

    .line 3079
    :cond_21
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3080
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(I)V

    .line 3082
    :cond_2f
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3086
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3103
    :goto_8
    return v0

    .line 3089
    :cond_9
    sparse-switch p2, :sswitch_data_3c

    move v0, v1

    .line 3103
    goto :goto_8

    .line 3091
    :sswitch_e
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3092
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget v2, v2, Landroid/support/v4/view/ViewPager;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_22
    move v0, v1

    .line 3095
    goto :goto_8

    .line 3097
    :sswitch_24
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3098
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget v2, v2, Landroid/support/v4/view/ViewPager;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_39
    move v0, v1

    .line 3101
    goto :goto_8

    .line 3089
    nop

    :sswitch_data_3c
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_24
    .end sparse-switch
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    .prologue
    .line 3058
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3059
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3061
    invoke-static {p2}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/h;

    move-result-object v0

    .line 3062
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/h;->a(Z)V

    .line 3063
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/i;

    if-eqz v1, :cond_3e

    .line 3065
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/h;->a(I)V

    .line 3066
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget v1, v1, Landroid/support/v4/view/ViewPager;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/h;->b(I)V

    .line 3067
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->b:Landroid/support/v4/view/ViewPager;

    iget v1, v1, Landroid/support/v4/view/ViewPager;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/h;->c(I)V

    .line 3069
    :cond_3e
    return-void
.end method
