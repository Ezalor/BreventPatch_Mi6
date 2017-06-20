.class final Lme/piebridge/prevent/ui/a/g$2;
.super Ljava/lang/Object;
.source "PreventUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/a/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lme/piebridge/prevent/ui/a/g$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lme/piebridge/prevent/ui/a/g$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/piebridge/prevent/ui/a/g;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method
