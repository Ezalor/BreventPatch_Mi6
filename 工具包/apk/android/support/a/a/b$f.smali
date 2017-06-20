.class Landroid/support/a/a/b$f;
.super Landroid/support/a/a/b$e;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/support/a/a/b$e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Fragment;Z)V
    .registers 3

    .prologue
    .line 112
    invoke-static {p1, p2}, Landroid/support/a/a/c;->a(Landroid/app/Fragment;Z)V

    .line 113
    return-void
.end method
