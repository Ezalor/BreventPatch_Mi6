.class Landroid/support/a/a/b$d;
.super Landroid/support/a/a/b$c;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/support/a/a/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 93
    invoke-static {p1, p2}, Landroid/support/a/a/e;->a(Landroid/app/Fragment;Z)V

    .line 94
    return-void
.end method
