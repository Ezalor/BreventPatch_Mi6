.class Landroid/support/a/a/b$c;
.super Landroid/support/a/a/b$a;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/a/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 86
    invoke-static {p1, p2}, Landroid/support/a/a/d;->a(Landroid/app/Fragment;Z)V

    .line 87
    return-void
.end method
