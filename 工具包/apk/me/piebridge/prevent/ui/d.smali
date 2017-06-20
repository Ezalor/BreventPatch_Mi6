.class public Lme/piebridge/prevent/ui/d;
.super Landroid/support/a/a/f;
.source "ScreenSlidePagerAdapter.java"


# instance fields
.field private final a:[Lme/piebridge/prevent/ui/b;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/a/a/f;-><init>(Landroid/app/FragmentManager;)V

    .line 18
    iput-object p2, p0, Lme/piebridge/prevent/ui/d;->b:[Ljava/lang/String;

    .line 19
    array-length v0, p2

    new-array v0, v0, [Lme/piebridge/prevent/ui/b;

    iput-object v0, p0, Lme/piebridge/prevent/ui/d;->a:[Lme/piebridge/prevent/ui/b;

    .line 20
    return-void
.end method


# virtual methods
.method public a(I)Landroid/app/Fragment;
    .registers 3

    .prologue
    .line 31
    if-nez p1, :cond_8

    .line 32
    new-instance v0, Lme/piebridge/prevent/ui/a;

    invoke-direct {v0}, Lme/piebridge/prevent/ui/a;-><init>()V

    .line 36
    :goto_7
    return-object v0

    .line 33
    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 34
    new-instance v0, Lme/piebridge/prevent/ui/c;

    invoke-direct {v0}, Lme/piebridge/prevent/ui/c;-><init>()V

    goto :goto_7

    .line 36
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Landroid/support/a/a/f;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/piebridge/prevent/ui/b;

    .line 25
    iget-object v1, p0, Lme/piebridge/prevent/ui/d;->a:[Lme/piebridge/prevent/ui/b;

    aput-object v0, v1, p2

    .line 26
    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lme/piebridge/prevent/ui/d;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lme/piebridge/prevent/ui/d;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public d(I)Lme/piebridge/prevent/ui/b;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lme/piebridge/prevent/ui/d;->a:[Lme/piebridge/prevent/ui/b;

    aget-object v0, v0, p1

    return-object v0
.end method
