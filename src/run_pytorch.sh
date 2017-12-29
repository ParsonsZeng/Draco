mpirun -n 8 \
python distributed_nn.py \
--lr=0.01 \
--network=FC \
--dataset=MNIST \
--batch-size=4 \
--comm-type=Bcast \
--num-aggregate=7 \
--mode=maj_vote \
--coding-method=cyclic \
--eval-freq=2000 \
--epochs=50 \
--err-mode=constant \
--adversarial=-100 \
--max-steps=1000000 \
--worker-fail=2 \
--group-size=3 \
--err-case=worst_case \
--compress-grad=compress \
--train-dir=/home/ubuntu/
